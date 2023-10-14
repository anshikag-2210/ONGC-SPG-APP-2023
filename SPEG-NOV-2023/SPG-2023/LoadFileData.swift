//
//  LoadData.swift
//  SPEG-NOV-2023
//
//  Created by Anshika Gangwar on 09/10/23.
//

import Foundation

protocol CVSLoadable{
 init(raw: [String])
}

struct Tracks_First_json: Identifiable,Decodable{
 var col1: String = ""
 var Name: String = ""
 var id = UUID()
 init(raw: [String]){
  col1 = raw[0]
  Name = raw[1]
 }
}


struct Tracks_First: Identifiable,Decodable{
 var col1: String = ""
 var Name: String = ""
 var id = UUID()
 init(raw: [String]){
  col1 = raw[0]
  Name = raw[1]
 }
}

func loadCsv(from csvName: String) ->[Tracks_First]{
 var csvToStruct = [Tracks_First]()
 guard let filepath = Bundle.main.path(forResource: csvName, ofType: "csv") else{
  return []
 }
 var _data = ""
 do{
  _data = try String(contentsOfFile: filepath)
 } catch{
  print(error)
  return []
 }
 
 var rows = _data.components(separatedBy: "\n")
 let colsCount = rows.first?.components(separatedBy: ",").count
 rows.removeFirst()
 // split rows into columns.
 
 for row in rows{
  let csvCols = row.components(separatedBy: ",")
  if(csvCols.count == colsCount){
   let _dstruct = Tracks_First.init(raw:  csvCols)
   csvToStruct.append(_dstruct)
  }
 }
 return csvToStruct
}


func loadJSON(from jsonFileName: String) ->[Tracks_First]{
 var jsonToStruct = [Tracks_First]()
 guard let file = Bundle.main.url(forResource: jsonFileName, withExtension: "json") else{
  return []
 }
 let data: Data
 do{
  data = try Data(contentsOf: file)
 } catch{
  print(error)
  return []
 }
 
 do {
     let decoder = JSONDecoder()
     return try decoder.decode([Tracks_First].self, from: data)
 } catch {
  print(error)
  return []
 }
 return jsonToStruct
}
 
