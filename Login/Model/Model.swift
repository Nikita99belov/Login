//
//  Model.swift
//  Login
//
//  Created by Sofi on 05.02.2021.
//


struct DataUser {
    let loginName: String
    let userName: String
    let password: String
    let icon: String
    let city: String
    let interest: String
    let foto: [String]
    let age: String
}

extension DataUser {
    static func showDataUser() -> DataUser {
        
        DataUser (loginName: "Nik",
                  userName: "Никита Белов",
                  password: "12345",
                  icon: "icon1",
                  city: "Москва",
                  interest: "Мне нравится активный отдых и все что связано с экстримальным спортом. Работаю инструктором по кайтсерфингу и виндсерфигу во Вьетнаме. Люблю свою жену и сына, все свободное время уделяю семье.",
                  foto: ["photo2","photo3","photo4","photo5"],
                  age: "29")
    }
}
