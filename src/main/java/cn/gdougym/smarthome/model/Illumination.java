package cn.gdougym.smarthome.model;

import lombok.Data;

import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

/**
 * 湿度实体
 */
@Entity
@Data
@Table(name = "illumination")
public class Illumination {

  private long measurementId;
  private String sensorId;
  private java.sql.Date date;
  private java.sql.Time time;
  private long timestamp;
  private String value;
  private long valueInt;


  @Id
  public long getMeasurementId() {
    return measurementId;
  }

  public void setMeasurementId(long measurementId) {
    this.measurementId = measurementId;
  }


  public String getSensorId() {
    return sensorId;
  }

  public void setSensorId(String sensorId) {
    this.sensorId = sensorId;
  }


  public java.sql.Date getDate() {
    return date;
  }

  public void setDate(java.sql.Date date) {
    this.date = date;
  }


  public java.sql.Time getTime() {
    return time;
  }

  public void setTime(java.sql.Time time) {
    this.time = time;
  }


  public long getTimestamp() {
    return timestamp;
  }

  public void setTimestamp(long timestamp) {
    this.timestamp = timestamp;
  }


  public String getValue() {
    return value;
  }

  public void setValue(String value) {
    this.value = value;
  }


  public long getValueInt() {
    return valueInt;
  }

  public void setValueInt(long valueInt) {
    this.valueInt = valueInt;
  }

}
