//
//  Router.swift
//  Spokid Project
//
//  Created by Lucas Santos on 01/02/24.
//

import Foundation
import SwiftUI

struct RouterMultipleViews: View {
    @State var router: Router = .Home
    var body: some View {
        
        ZStack {
            switch router {
                case .Home:
                    ZStack {
                        HomeView(router: $router)
                    }
                case .ChooseBaby:
                    ZStack {
                        ChooseBabyView(router: $router)
                    }
                case .MaleBaby:
                    ZStack {
                        MaleBabyView(router: $router)
                }
                case .FemaleBaby:
                    ZStack {
                        FemaleBabyView(router: $router)
                }
                case .MaleKid:
                    ZStack {
                        MaleKidView(router: $router)
                    }
                case .KidFase1:
                    ZStack {
                        Kid_Fase_1View(router: $router)
                }
                case .KidFase2:
                    ZStack {
                        Kid_Fase_2View(router: $router)
                    }
                case .KidFase3:
                    ZStack {
                        Kid_Fase_3View(router: $router)
                    }
                case .KidFase4:
                    ZStack {
                        Kid_Fase_4View(router: $router)
                    }
                case .MalePreHealth:
                    ZStack {
                        MalePreHealthView(router: $router)
                    }
                case .PreFase1:
                    ZStack {
                        Pre_Fase_1View(router: $router)
                    }
                case .PreFase2:
                    ZStack {
                        Pre_Fase_2View(router: $router)
                    }
                case .PreFase3:
                    ZStack {
                        Pre_Fase_3View(router: $router)
                    }
                case .PreFase4:
                    ZStack {
                        Pre_Fase_4View(router: $router)
                    }
                case .MaleAdoHealth:
                    ZStack {
                        MaleAdoHealthView(router: $router)
                    }
                case .AdoFase1:
                    ZStack {
                        Ado_Fase_1View(router: $router)
                    }
                case .AdoFase2:
                    ZStack {
                        Ado_Fase_2View(router: $router)
                    }
                case .AdoFase3:
                    ZStack {
                        Ado_Fase_3View(router: $router)
                    }
                case .AdoFase4:
                    ZStack {
                        Ado_Fase_4View(router: $router)
                    }
                case .MaleAdoHealth_Congrats:
                    ZStack {
                        MaleAdoHealth_CongratsView(router: $router)
                }
                case .MaleAdultHealthScore:
                    ZStack {
                        MaleAdultHealthScoreView(router: $router)
                }
                case .MaleAdultHealthEnd:
                    ZStack {
                        MaleAdultHealthEndView(router: $router)
                }
                case .FemaleKid:
                    ZStack {
                        FemaleKidView(router: $router)
                }
                case .MalePreSick:
                    ZStack {
                        MalePreSickView(router: $router)
                }
                case .FemalePreSick:
                    ZStack {
                        FemalePreSickView(router: $router)
                }
                case .FemalePreHealth:
                    ZStack {
                        FemalePreHealthView(router: $router)
                }
                case .MaleAdoSick:
                    ZStack {
                        MaleAdoSickView(router: $router)
                }
                case .FemaleAdoHealth:
                    ZStack {
                        FemaleAdoHealthView(router: $router)
                }
                case .FemaleAdoSick:
                    ZStack {
                        FemaleAdoSickView(router: $router)
                }
                case .FemaleAdoSick_Congrats:
                    ZStack {
                        FemaleAdoSick_CongratsView(router: $router)
                }
                case .FemaleAdoHealth_Congrats:
                    ZStack {
                        FemaleAdoHealth_CongratsView(router: $router)
                }
                case .MaleAdoSick_Congrats:
                    ZStack {
                        MaleAdoSick_CongratsView(router: $router)
                }
                case .FemaleAdultHealthScore:
                    ZStack {
                        FemaleAdultHealthScoreView(router: $router)
                }
                case .FemaleAdultSickScore:
                    ZStack {
                        FemaleAdultSickScoreView(router: $router)
                }
                case .MaleAdultSickScore:
                    ZStack {
                        MaleAdultSickScoreView(router: $router)
                }
                case .MaleAdultSickEnd:
                    ZStack {
                        MaleAdultSickEndView(router: $router)
                }
                case .FemaleAdultSickEnd:
                    ZStack {
                        FemaleAdultSickEndView(router: $router)
                }
                case .FemaleAdultHealthEnd:
                    ZStack {
                        FemaleAdultHealthEndView(router: $router)
                }
            }
        }
        .ignoresSafeArea()
        .animation(.smooth, value: router)
        
    }
}

enum Router {
    case Home
    case ChooseBaby
    case MaleBaby
    case FemaleBaby
    case MaleKid
    case KidFase1
    case KidFase2
    case KidFase3
    case KidFase4
    case MalePreHealth
    case PreFase1
    case PreFase2
    case PreFase3
    case PreFase4
    case MaleAdoHealth
    case AdoFase1
    case AdoFase2
    case AdoFase3
    case AdoFase4
    case MaleAdoHealth_Congrats
    case MaleAdultHealthScore
    case MaleAdultHealthEnd
    case FemaleKid
    case MalePreSick
    case FemalePreSick
    case FemalePreHealth
    case MaleAdoSick
    case FemaleAdoHealth
    case FemaleAdoSick
    case FemaleAdoSick_Congrats
    case FemaleAdoHealth_Congrats
    case MaleAdoSick_Congrats
    case FemaleAdultHealthScore
    case FemaleAdultSickScore
    case MaleAdultSickScore
    case MaleAdultSickEnd
    case FemaleAdultSickEnd
    case FemaleAdultHealthEnd



}

//teste
