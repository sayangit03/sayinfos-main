package com.spring.beans;

import org.springframework.data.annotation.Id;
import org.springframework.data.mongodb.core.mapping.Document;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

@Document(value = "service")
@Getter
@Setter
@NoArgsConstructor
@AllArgsConstructor
public class AllServices {

	@Id
	private int id;

	private String serviceName;

	private String serviceURI;

	private int serviceHits;

	private boolean serviceStatus;

}
