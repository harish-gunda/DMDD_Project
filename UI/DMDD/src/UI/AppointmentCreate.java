/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/GUIForms/JPanel.java to edit this template
 */
package UI;

import java.sql.CallableStatement;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.Calendar;
import javax.swing.JOptionPane;
import java.util.Date;

/**
 *
 * @author harish
 */
public class AppointmentCreate extends javax.swing.JPanel {

    /**
     * Creates new form PatientCreate
     */
    public AppointmentCreate() {
        initComponents();
    }

    /**
     * This method is called from within the constructor to initialize the form.
     * WARNING: Do NOT modify this code. The content of this method is always
     * regenerated by the Form Editor.
     */
    @SuppressWarnings("unchecked")
    // <editor-fold defaultstate="collapsed" desc="Generated Code">//GEN-BEGIN:initComponents
    private void initComponents() {

        jLabel1 = new javax.swing.JLabel();
        txtPatientID = new javax.swing.JTextField();
        jLabel2 = new javax.swing.JLabel();
        txtDoctorID = new javax.swing.JTextField();
        jLabel3 = new javax.swing.JLabel();
        txtType = new javax.swing.JTextField();
        jLabel4 = new javax.swing.JLabel();
        txtCreatedDate = new javax.swing.JTextField();
        jLabel5 = new javax.swing.JLabel();
        txtAppointmentDate = new javax.swing.JTextField();
        jLabel6 = new javax.swing.JLabel();
        txtAppointmentTime = new javax.swing.JTextField();
        jLabel7 = new javax.swing.JLabel();
        txtDescription = new javax.swing.JTextField();
        jButton1 = new javax.swing.JButton();

        jLabel1.setText("Pateint ID");

        jLabel2.setText("Doctor ID");

        jLabel3.setText("Type");

        jLabel4.setText("Created Date");

        jLabel5.setText("Appointment Date(yyyy-mm-dd)");

        jLabel6.setText("Appointment Time(hh:mm:ss)");

        jLabel7.setText("Description");

        jButton1.setText("Create");
        jButton1.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                jButton1ActionPerformed(evt);
            }
        });

        javax.swing.GroupLayout layout = new javax.swing.GroupLayout(this);
        this.setLayout(layout);
        layout.setHorizontalGroup(
            layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(layout.createSequentialGroup()
                .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                    .addGroup(layout.createSequentialGroup()
                        .addGap(43, 43, 43)
                        .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.TRAILING)
                            .addGroup(layout.createSequentialGroup()
                                .addComponent(jLabel7)
                                .addGap(58, 58, 58)
                                .addComponent(txtDescription, javax.swing.GroupLayout.PREFERRED_SIZE, 152, javax.swing.GroupLayout.PREFERRED_SIZE))
                            .addGroup(layout.createSequentialGroup()
                                .addComponent(jLabel6)
                                .addGap(58, 58, 58)
                                .addComponent(txtAppointmentTime, javax.swing.GroupLayout.PREFERRED_SIZE, 152, javax.swing.GroupLayout.PREFERRED_SIZE))
                            .addGroup(layout.createSequentialGroup()
                                .addComponent(jLabel5)
                                .addGap(58, 58, 58)
                                .addComponent(txtAppointmentDate, javax.swing.GroupLayout.PREFERRED_SIZE, 152, javax.swing.GroupLayout.PREFERRED_SIZE))
                            .addGroup(layout.createSequentialGroup()
                                .addComponent(jLabel4)
                                .addGap(58, 58, 58)
                                .addComponent(txtCreatedDate, javax.swing.GroupLayout.PREFERRED_SIZE, 152, javax.swing.GroupLayout.PREFERRED_SIZE))
                            .addGroup(layout.createSequentialGroup()
                                .addComponent(jLabel3)
                                .addGap(58, 58, 58)
                                .addComponent(txtType, javax.swing.GroupLayout.PREFERRED_SIZE, 152, javax.swing.GroupLayout.PREFERRED_SIZE))
                            .addGroup(layout.createSequentialGroup()
                                .addComponent(jLabel2)
                                .addGap(58, 58, 58)
                                .addComponent(txtDoctorID, javax.swing.GroupLayout.PREFERRED_SIZE, 152, javax.swing.GroupLayout.PREFERRED_SIZE))
                            .addGroup(layout.createSequentialGroup()
                                .addComponent(jLabel1)
                                .addGap(58, 58, 58)
                                .addComponent(txtPatientID, javax.swing.GroupLayout.PREFERRED_SIZE, 152, javax.swing.GroupLayout.PREFERRED_SIZE))))
                    .addGroup(layout.createSequentialGroup()
                        .addGap(149, 149, 149)
                        .addComponent(jButton1)))
                .addContainerGap(javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE))
        );
        layout.setVerticalGroup(
            layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(layout.createSequentialGroup()
                .addGap(17, 17, 17)
                .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE)
                    .addComponent(jLabel1)
                    .addComponent(txtPatientID, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE))
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.UNRELATED)
                .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE)
                    .addComponent(jLabel2)
                    .addComponent(txtDoctorID, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE))
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.UNRELATED)
                .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE)
                    .addComponent(jLabel3)
                    .addComponent(txtType, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE))
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.UNRELATED)
                .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE)
                    .addComponent(jLabel4)
                    .addComponent(txtCreatedDate, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE))
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.UNRELATED)
                .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE)
                    .addComponent(jLabel5)
                    .addComponent(txtAppointmentDate, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE))
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.UNRELATED)
                .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE)
                    .addComponent(jLabel6)
                    .addComponent(txtAppointmentTime, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE))
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.UNRELATED)
                .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE)
                    .addComponent(jLabel7)
                    .addComponent(txtDescription, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE))
                .addGap(35, 35, 35)
                .addComponent(jButton1)
                .addContainerGap(52, Short.MAX_VALUE))
        );
    }// </editor-fold>//GEN-END:initComponents

    private void jButton1ActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_jButton1ActionPerformed
        // TODO add your handling code here:
        String connectionUrl = "jdbc:sqlserver://localhost:1433;databaseName=HOSPITAL_PATIENT_MANAGEMENT;encrypt=false;user=sa;password=Practice@123;";
        System.out.println("Connected");
        try
            {
                // call methods that might throw SQLException
//                DriverManager.getDriver("jdbc:sqlserver:");
                
                Connection con = DriverManager.getConnection(connectionUrl);
                
                
                String query = " insert into APPOINTMENT (PATIENT_ID, DOCTOR_ID, TYPE, CREATED_DATE, APPOINTMENT_DATE,APPOINTMENT_TIME,APPOINTMENT_DESCRIPTION)"
        + " values (?, ?, ?, ?, ?,?,?)";

                // create the mysql insert preparedstatement
                PreparedStatement preparedStmt = con.prepareStatement(query);
                preparedStmt.setInt(1, Integer.parseInt(txtPatientID.getText()));
                preparedStmt.setInt(2, Integer.parseInt(txtDoctorID.getText()));
                preparedStmt.setString(3, txtType.getText());
                java.sql.Date date = new java.sql.Date(Calendar.getInstance().getTime().getTime());
                preparedStmt.setDate(4, date);
                preparedStmt.setDate(5, java.sql.Date.valueOf(txtAppointmentDate.getText()));
                preparedStmt.setTime(6, java.sql.Time.valueOf(txtAppointmentTime.getText()));
                preparedStmt.setString(7, txtDescription.getText());
                System.out.println(query);
                preparedStmt.execute();
                con.close();
                JOptionPane.showMessageDialog(this, "Appointment details saved successfully");
            }
        catch (Exception e)
            {
                // do something appropriate with the exception, *at least*:
                JOptionPane.showMessageDialog(this, "Unable to add Patient details, please check the values and try again");
                e.printStackTrace();
            }
    }//GEN-LAST:event_jButton1ActionPerformed


    // Variables declaration - do not modify//GEN-BEGIN:variables
    private javax.swing.JButton jButton1;
    private javax.swing.JLabel jLabel1;
    private javax.swing.JLabel jLabel2;
    private javax.swing.JLabel jLabel3;
    private javax.swing.JLabel jLabel4;
    private javax.swing.JLabel jLabel5;
    private javax.swing.JLabel jLabel6;
    private javax.swing.JLabel jLabel7;
    private javax.swing.JTextField txtAppointmentDate;
    private javax.swing.JTextField txtAppointmentTime;
    private javax.swing.JTextField txtCreatedDate;
    private javax.swing.JTextField txtDescription;
    private javax.swing.JTextField txtDoctorID;
    private javax.swing.JTextField txtPatientID;
    private javax.swing.JTextField txtType;
    // End of variables declaration//GEN-END:variables
}

//CallableStatement cstmt = null;
//                String code;
//
//                try {
//                    cstmt = con.prepareCall(
//                            "{call dbo.Test(?,?)}");
//                    cstmt.setString("test", "PA001");
//                    cstmt.registerOutParameter("test1", java.sql.Types.VARCHAR);
//                    cstmt.execute();
//                    code = cstmt.getString("test1");
//                    System.out.println(code);
//                } catch (Exception ex) {
//                    ex.printStackTrace();
//                }