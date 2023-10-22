//
//  ListingDetailView.swift
//  AirbnbClone
//
//  Created by omar thamri on 22/10/2023.
//

import SwiftUI
import MapKit

struct ListingDetailView: View {
    @Environment(\.dismiss) var dismiss
    var body: some View {
        ScrollView {
            ZStack(alignment: .topLeading) {
                ListingImageCarouselView()
                    .frame(height: 320)
                Button {
                    dismiss()
                } label: {
                    Image(systemName: "chevron.left")
                        .foregroundStyle(.black)
                        .background{
                            Circle()
                                .fill(.white)
                                .frame(width: 32,height: 32)
                        }
                        .padding(32)
                }

                
            }
            VStack(alignment: .leading,spacing: 8) {
                Text("Miami villa")
                    .font(.title)
                    .fontWeight(.semibold)
                VStack(alignment: .leading) {
                    HStack(spacing: 2) {
                        Image(systemName: "star.fill")
                        Text("4.86")
                        Text(" - ")
                        Text("28 reviews")
                            .underline()
                            .fontWeight(.semibold)
                    }
                    .foregroundStyle(.black)
                    Text("Miami, Florida")
                }
                .font(.caption)
            }
            .frame(maxWidth: .infinity,alignment: .leading)
            .padding(.horizontal)
            Divider()
            // host info view
            HStack {
                VStack(alignment: .leading,spacing: 4) {
                    Text("Entire villa hosted by john smith")
                        .font(.headline)
                        .frame(width:250,alignment: .leading)
                    HStack(spacing: 2) {
                        Text("4 guests -")
                        Text("4 bedrooms -")
                        Text("4 beds -")
                        Text("3 baths")
                    }
                    .font(.caption)
                }
                .frame(width: 300,alignment: .leading)
                Spacer()
                Image("harvey_specter")
                    .resizable()
                    .scaledToFill()
                    .frame(width: 64, height: 64)
                    .clipShape(Circle())
            }
            .padding()
            Divider()
            // Listing Features
            VStack(alignment: .leading, spacing: 16) {
                ForEach(0..<2,id: \.self) { feature in
                    HStack(spacing: 12) {
                        Image(systemName: "medal")
                        VStack(alignment: .leading) {
                            Text("Superhost")
                                .font(.footnote)
                                .fontWeight(.semibold)
                            Text("Superhost are experienced highly rated hosts who are commited to providing great stars for guests")
                                .font(.caption)
                                .foregroundStyle(.gray)
                        }
                        Spacer()
                    }
                }
            }
            .padding()
            Divider()
            // bedrooms view
            VStack(alignment: .leading,spacing: 16) {
                Text("Where you'll sleep")
                    .font(.headline)
                ScrollView(.horizontal,showsIndicators: false) {
                    HStack(spacing: 16) {
                        ForEach(1..<5) { bedroom in
                            VStack {
                                Image(systemName: "bed.double")
                                Text("bedroom \(bedroom)")
                            }
                            .frame(width: 132, height: 100)
                            .overlay {
                                RoundedRectangle(cornerRadius: 12)
                                    .stroke(lineWidth: 0.5)
                                    .foregroundStyle(.gray)
                            }
                        }
                    }
                    
                }
                .scrollTargetBehavior(.paging)
            }
            .frame(maxWidth: .infinity,alignment: .leading)
            .padding()
            Divider()
            // listing amenities
            VStack(alignment: .leading,spacing: 16) {
                Text("What this place offers")
                    .font(.headline)
                ForEach(0..<5) { feature in
                    HStack{
                        Image(systemName: "wifi")
                            .frame(width: 32)
                        Text("wifi")
                            .font(.footnote)
                        Spacer()
                    }
                }
            }
            .frame(maxWidth: .infinity,alignment: .leading)
            .padding()
            Divider()
            VStack(alignment: .leading,spacing: 16) {
                Text("Where you'll be")
                    .font(.headline)
                Map()
                    .frame(height: 200)
                    .clipShape(RoundedRectangle(cornerRadius: 12))
                
            }
            .padding()
        }
        .padding(.bottom,64)
        .ignoresSafeArea()
        .overlay(alignment: .bottom) {
            VStack {
                Divider()
                    .padding(.bottom)
                HStack {
                    VStack(alignment: .leading) {
                        Text("500$")
                            .font(.subheadline)
                            .fontWeight(.semibold)
                        Text("Total before taxes")
                            .font(.footnote)
                        Text("Oct 15 - 20")
                            .font(.footnote)
                            .fontWeight(.semibold)
                            .underline()
                    }
                    Spacer()
                    Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                        Text("Reserve")
                            .font(.subheadline)
                            .fontWeight(.semibold)
                            .foregroundStyle(.white)
                            .frame(width: 140,height: 40)
                            .background(.pink)
                            .clipShape(RoundedRectangle(cornerRadius: 8))
                    })
                }
                .padding(.horizontal,32)
            }
            .background(.white)
        }
    }
}

#Preview {
    ListingDetailView()
}
