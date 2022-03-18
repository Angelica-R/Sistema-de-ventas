/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Presentacion;
import Entidad.ClsEMarca;
import Entidad.ClsECategoria;
import Entidad.ClsEEmpleado;
import Entidad.ClsEProducto;
import Entidad.ClsEProveedor;
import Negocio.ClsNProducto;
import Negocio.ClsNCategoria;
import Negocio.ClsNProveedor;
import Entidad.ClsEProducto;
import Negocio.ClsConexion;
import Negocio.ClsNEmpleado;
import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;
import java.io.FileInputStream;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;
import javax.swing.Timer;
import java.awt.HeadlessException;
import java.awt.Image;
import java.awt.image.BufferedImage;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.InputStream;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import javax.imageio.ImageIO;
import javax.swing.ImageIcon;
import javax.swing.JFileChooser;
import javax.swing.JOptionPane;


/**
 *
 * @author Arnold
 */
public class FrmProductos extends javax.swing.JFrame {

    /**
     * Creates new form FrmProductos
     */
    
    FileInputStream fis;
    int longitudBytes;
    
    ClsEMarca objEMarca = new ClsEMarca();
    ClsNCategoria CNCate = new ClsNCategoria();
    ClsECategoria EECate = new ClsECategoria();
    ClsNProveedor CNProv = new ClsNProveedor();
    ClsEProveedor CEProv = new ClsEProveedor();
    ClsEProducto objEProd = new ClsEProducto();
    ClsNProducto objCProd = new ClsNProducto();
    ClsNProducto CNProd = new ClsNProducto();
    
    FrmCategoria FrmCate = new FrmCategoria();
    FrmProveedor FrmProv = new FrmProveedor();
    
    
    public FrmProductos() {
        initComponents();
        this.setLocationRelativeTo(null);
        CNCate.Mtd_listar_categorias(cmbxCategoria);
        //CNProv.Mtd_ListarProveedores(cmbxProveedor);
        objCProd.Mtd_ListarMarca(cmbMarca);
        fecha_actual();
        labelId_Cate.setVisible(true);
        label_IdProv.setVisible(false);
        label_IDMarca.setVisible(true);
        btnNuevoProd.setVisible(false);
        //mtdCargo_id();
  
    }
    
    
    /**
     * This method is called from within the constructor to initialize the form.
     * WARNING: Do NOT modify this code. The content of this method is always
     * regenerated by the Form Editor.
     */
    @SuppressWarnings("unchecked")
    // <editor-fold defaultstate="collapsed" desc="Generated Code">//GEN-BEGIN:initComponents
    private void initComponents() {

        jLabel6 = new javax.swing.JLabel();
        labelEmpleadoDni = new javax.swing.JLabel();
        txtPCompra = new javax.swing.JTextField();
        jLabel8 = new javax.swing.JLabel();
        txtPVenta = new javax.swing.JTextField();
        txtStock = new javax.swing.JTextField();
        jLabel15 = new javax.swing.JLabel();
        jLabel9 = new javax.swing.JLabel();
        labelFecha = new javax.swing.JLabel();
        jLabel5 = new javax.swing.JLabel();
        jLabel16 = new javax.swing.JLabel();
        jLabel1 = new javax.swing.JLabel();
        labelHora = new javax.swing.JLabel();
        jLabel3 = new javax.swing.JLabel();
        jLabel11 = new javax.swing.JLabel();
        jLabel4 = new javax.swing.JLabel();
        txtNombre = new javax.swing.JTextField();
        cmbxCategoria = new javax.swing.JComboBox<>();
        btnNuevaCate = new javax.swing.JButton();
        btnNuevoProd = new javax.swing.JButton();
        btnRegistrar = new javax.swing.JButton();
        btnCerrar = new javax.swing.JButton();
        btnLimpiar = new javax.swing.JButton();
        labelId_Cate = new javax.swing.JLabel();
        label_IdProv = new javax.swing.JLabel();
        cmbMarca = new javax.swing.JComboBox<>();
        label_IDMarca = new javax.swing.JLabel();
        jLabel7 = new javax.swing.JLabel();
        txtEstado = new javax.swing.JTextField();
        jScrollPane1 = new javax.swing.JScrollPane();
        txtDescripcion = new javax.swing.JTextArea();
        jLabel12 = new javax.swing.JLabel();
        jLabel13 = new javax.swing.JLabel();
        txtStockRefe = new javax.swing.JTextField();
        jLabel14 = new javax.swing.JLabel();
        txtImagen = new javax.swing.JTextField();
        jLabel2 = new javax.swing.JLabel();
        txtEmpleado_id = new javax.swing.JTextField();

        setDefaultCloseOperation(javax.swing.WindowConstants.EXIT_ON_CLOSE);

        jLabel6.setText("Precio de Compra:");

        labelEmpleadoDni.setText("Nro DNI");

        jLabel8.setText("Precio de venta:");

        jLabel15.setText("Fecha:");

        jLabel9.setText("Stock:");

        labelFecha.setText("dd-MM-YYYY");

        jLabel5.setText("Categoria");

        jLabel16.setText("Hora:");

        jLabel1.setFont(new java.awt.Font("Segoe UI", 0, 24)); // NOI18N
        jLabel1.setText("REGISTRO DE PRODUCTOS");

        labelHora.setText("hh--mm");

        jLabel3.setText("Nombre:");

        jLabel11.setText("Empleado DNI:");

        jLabel4.setText("Marca:");

        cmbxCategoria.setModel(new javax.swing.DefaultComboBoxModel<>(new String[] { "Item 1", "Item 2", "Item 3", "Item 4" }));
        cmbxCategoria.addItemListener(new java.awt.event.ItemListener() {
            public void itemStateChanged(java.awt.event.ItemEvent evt) {
                cmbxCategoriaItemStateChanged(evt);
            }
        });

        btnNuevaCate.setText("Nuevo");
        btnNuevaCate.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                btnNuevaCateActionPerformed(evt);
            }
        });

        btnNuevoProd.setText("Nuevo");
        btnNuevoProd.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                btnNuevoProdActionPerformed(evt);
            }
        });

        btnRegistrar.setText("Registrar");
        btnRegistrar.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                btnRegistrarActionPerformed(evt);
            }
        });

        btnCerrar.setText("Cerrar");
        btnCerrar.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                btnCerrarActionPerformed(evt);
            }
        });

        btnLimpiar.setText("Limpiar");
        btnLimpiar.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                btnLimpiarActionPerformed(evt);
            }
        });

        labelId_Cate.setText("CateId");

        label_IdProv.setText("ProvId");

        cmbMarca.setModel(new javax.swing.DefaultComboBoxModel<>(new String[] { "Item 1", "Item 2", "Item 3", "Item 4" }));
        cmbMarca.addItemListener(new java.awt.event.ItemListener() {
            public void itemStateChanged(java.awt.event.ItemEvent evt) {
                cmbMarcaItemStateChanged(evt);
            }
        });

        label_IDMarca.setText("MarcaId");

        jLabel7.setText("Estado:");

        txtDescripcion.setColumns(20);
        txtDescripcion.setRows(5);
        jScrollPane1.setViewportView(txtDescripcion);

        jLabel12.setText("Descripcion:");

        jLabel13.setText("Stock Referencial:");

        jLabel14.setText("Imagen:");

        jLabel2.setText("Empleado id");

        javax.swing.GroupLayout layout = new javax.swing.GroupLayout(getContentPane());
        getContentPane().setLayout(layout);
        layout.setHorizontalGroup(
            layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(layout.createSequentialGroup()
                .addGap(49, 49, 49)
                .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                    .addGroup(layout.createSequentialGroup()
                        .addGap(29, 29, 29)
                        .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                            .addGroup(layout.createSequentialGroup()
                                .addGap(24, 24, 24)
                                .addComponent(btnCerrar)
                                .addGap(170, 170, 170)
                                .addComponent(btnLimpiar)
                                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
                                .addComponent(btnRegistrar)
                                .addGap(121, 121, 121))
                            .addGroup(layout.createSequentialGroup()
                                .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                                    .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.TRAILING, false)
                                        .addGroup(layout.createSequentialGroup()
                                            .addComponent(jLabel4)
                                            .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
                                            .addComponent(cmbMarca, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE))
                                        .addGroup(javax.swing.GroupLayout.Alignment.LEADING, layout.createSequentialGroup()
                                            .addComponent(jLabel5)
                                            .addGap(59, 59, 59)
                                            .addComponent(cmbxCategoria, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)))
                                    .addGroup(layout.createSequentialGroup()
                                        .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                                            .addComponent(jLabel6)
                                            .addComponent(jLabel2))
                                        .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.UNRELATED)
                                        .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING, false)
                                            .addComponent(txtPCompra, javax.swing.GroupLayout.DEFAULT_SIZE, 83, Short.MAX_VALUE)
                                            .addComponent(txtEmpleado_id))))
                                .addGap(69, 69, 69)
                                .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                                    .addGroup(layout.createSequentialGroup()
                                        .addGap(196, 196, 196)
                                        .addComponent(label_IDMarca)
                                        .addGap(30, 30, 30)
                                        .addComponent(labelId_Cate)
                                        .addGap(0, 0, Short.MAX_VALUE))
                                    .addGroup(layout.createSequentialGroup()
                                        .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                                            .addComponent(btnNuevaCate)
                                            .addComponent(btnNuevoProd)
                                            .addGroup(layout.createSequentialGroup()
                                                .addComponent(jLabel7)
                                                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED, 30, Short.MAX_VALUE)
                                                .addComponent(txtEstado, javax.swing.GroupLayout.PREFERRED_SIZE, 52, javax.swing.GroupLayout.PREFERRED_SIZE)))
                                        .addGap(323, 323, 323))))
                            .addGroup(layout.createSequentialGroup()
                                .addComponent(jLabel8)
                                .addGap(26, 26, 26)
                                .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                                    .addGroup(layout.createSequentialGroup()
                                        .addComponent(txtPVenta)
                                        .addContainerGap(530, Short.MAX_VALUE))
                                    .addGroup(layout.createSequentialGroup()
                                        .addComponent(txtImagen, javax.swing.GroupLayout.PREFERRED_SIZE, 403, javax.swing.GroupLayout.PREFERRED_SIZE)
                                        .addContainerGap(javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE))))
                            .addGroup(layout.createSequentialGroup()
                                .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                                    .addComponent(jLabel12)
                                    .addComponent(jScrollPane1, javax.swing.GroupLayout.PREFERRED_SIZE, 606, javax.swing.GroupLayout.PREFERRED_SIZE)
                                    .addComponent(jLabel14)
                                    .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.TRAILING, false)
                                        .addGroup(javax.swing.GroupLayout.Alignment.LEADING, layout.createSequentialGroup()
                                            .addComponent(jLabel9)
                                            .addGap(18, 18, 18)
                                            .addComponent(txtStock, javax.swing.GroupLayout.PREFERRED_SIZE, 83, javax.swing.GroupLayout.PREFERRED_SIZE)
                                            .addGap(55, 55, 55)
                                            .addComponent(jLabel13)
                                            .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.UNRELATED)
                                            .addComponent(txtStockRefe))
                                        .addGroup(javax.swing.GroupLayout.Alignment.LEADING, layout.createSequentialGroup()
                                            .addComponent(jLabel3)
                                            .addGap(63, 63, 63)
                                            .addComponent(txtNombre, javax.swing.GroupLayout.PREFERRED_SIZE, 307, javax.swing.GroupLayout.PREFERRED_SIZE))))
                                .addGap(0, 0, Short.MAX_VALUE))))
                    .addGroup(javax.swing.GroupLayout.Alignment.TRAILING, layout.createSequentialGroup()
                        .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.TRAILING)
                            .addGroup(layout.createSequentialGroup()
                                .addGap(0, 0, Short.MAX_VALUE)
                                .addComponent(label_IdProv))
                            .addGroup(layout.createSequentialGroup()
                                .addComponent(jLabel11)
                                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.UNRELATED)
                                .addComponent(labelEmpleadoDni)
                                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
                                .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                                    .addComponent(jLabel15)
                                    .addComponent(jLabel16))
                                .addGap(18, 18, 18)
                                .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                                    .addComponent(labelFecha)
                                    .addGroup(layout.createSequentialGroup()
                                        .addGap(6, 6, 6)
                                        .addComponent(labelHora)))))
                        .addGap(73, 73, 73))))
            .addGroup(layout.createSequentialGroup()
                .addGap(259, 259, 259)
                .addComponent(jLabel1, javax.swing.GroupLayout.PREFERRED_SIZE, 304, javax.swing.GroupLayout.PREFERRED_SIZE)
                .addGap(0, 0, Short.MAX_VALUE))
        );
        layout.setVerticalGroup(
            layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(layout.createSequentialGroup()
                .addGap(26, 26, 26)
                .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                    .addGroup(layout.createSequentialGroup()
                        .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE)
                            .addComponent(jLabel15)
                            .addComponent(labelFecha))
                        .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.UNRELATED)
                        .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE)
                            .addComponent(labelHora)
                            .addComponent(jLabel16))
                        .addGap(18, 18, 18)
                        .addComponent(jLabel1))
                    .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE)
                        .addComponent(jLabel11)
                        .addComponent(labelEmpleadoDni)))
                .addGap(43, 43, 43)
                .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                    .addComponent(jLabel3)
                    .addComponent(txtNombre, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE))
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED, 25, Short.MAX_VALUE)
                .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE)
                    .addComponent(jLabel9)
                    .addComponent(txtStock, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)
                    .addComponent(jLabel13)
                    .addComponent(txtStockRefe, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE))
                .addGap(18, 18, 18)
                .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                    .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE)
                        .addComponent(cmbMarca, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)
                        .addComponent(label_IDMarca)
                        .addComponent(labelId_Cate)
                        .addComponent(label_IdProv))
                    .addComponent(jLabel4))
                .addGap(30, 30, 30)
                .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE)
                    .addComponent(cmbxCategoria, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)
                    .addComponent(jLabel5)
                    .addComponent(btnNuevaCate))
                .addGap(29, 29, 29)
                .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE)
                    .addComponent(btnNuevoProd)
                    .addComponent(jLabel2)
                    .addComponent(txtEmpleado_id, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE))
                .addGap(30, 30, 30)
                .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE)
                    .addComponent(txtPCompra, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)
                    .addComponent(jLabel6)
                    .addComponent(jLabel7)
                    .addComponent(txtEstado, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE))
                .addGap(26, 26, 26)
                .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE)
                    .addComponent(jLabel8)
                    .addComponent(txtPVenta, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE))
                .addGap(26, 26, 26)
                .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE)
                    .addComponent(jLabel14)
                    .addComponent(txtImagen, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE))
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED, 37, Short.MAX_VALUE)
                .addComponent(jLabel12)
                .addGap(18, 18, 18)
                .addComponent(jScrollPane1, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)
                .addGap(33, 33, 33)
                .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE)
                    .addComponent(btnCerrar)
                    .addComponent(btnLimpiar)
                    .addComponent(btnRegistrar))
                .addGap(37, 37, 37))
        );

        pack();
    }// </editor-fold>//GEN-END:initComponents
    
    public void fecha_actual() { 
        Date sisFecha = new Date(); 
        SimpleDateFormat formato= new SimpleDateFormat("dd-MM-YYYY");
        labelFecha.setText(formato.format(sisFecha));
        
        Timer tiempo = new Timer(100, new FrmProductos.horas());
        tiempo.start();
    }
    
    class horas implements ActionListener{
        public void  actionPerformed(ActionEvent e){
            Date sistHora = new Date();
            String pmAm = "hh:mm:ss a";
            SimpleDateFormat format = new SimpleDateFormat(pmAm);
            Calendar hoy = Calendar.getInstance(); 
            labelHora.setText(String.format(format.format(sistHora),hoy));
        }
    }
    
    
    
    private void cmbxCategoriaItemStateChanged(java.awt.event.ItemEvent evt) {//GEN-FIRST:event_cmbxCategoriaItemStateChanged

        ResultSet rs;
        String value= cmbxCategoria.getSelectedItem().toString(); 
        EECate.setNombre_cate(value);
        rs=CNCate.MtdBucarCategoriaID(EECate);
        try {
            while (rs.next())
                {
                    labelId_Cate.setText(Integer.toString(rs.getInt("id")));        
                }
            } catch (SQLException ex) {
                System.out.println(ex);
            }    
    }//GEN-LAST:event_cmbxCategoriaItemStateChanged

    private void btnNuevaCateActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_btnNuevaCateActionPerformed
        
        FrmCate.show();;
    
    }//GEN-LAST:event_btnNuevaCateActionPerformed

    private void btnNuevoProdActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_btnNuevoProdActionPerformed
        FrmProv.show();
    }//GEN-LAST:event_btnNuevoProdActionPerformed

    private void btnLimpiarActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_btnLimpiarActionPerformed
        MtdLimpiar();
    }//GEN-LAST:event_btnLimpiarActionPerformed

    private void btnRegistrarActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_btnRegistrarActionPerformed
        
        
        
        objEProd.setNombre(txtNombre.getText());
        //objEProd.setProveedor_id(Integer.parseInt(label_IdProv.getText()));
        //objEProd.setMarca(txtMarca.getText());
        objEProd.setStock(Integer.parseInt(txtStock.getText()));
        objEProd.setStockReferencial(Integer.parseInt(txtStockRefe.getText()));
        objEProd.setPrecio_venta(Double.parseDouble(txtPVenta.getText()));
        objEProd.setPrecio_compra(Double.parseDouble(txtPCompra.getText()));
        objEProd.setEstado(txtEstado.getText());
        objEProd.setFoto(txtImagen.getText());
        objEProd.setDescripcion(txtDescripcion.getText());
        objEProd.setEmpleado_id(Integer.parseInt(txtEmpleado_id.getText()));
        objEProd.setCategoria_id(Integer.parseInt(labelId_Cate.getText()));
        objEProd.setMarca(Integer.parseInt(label_IDMarca.getText()));
        
        
        //objEProd.setDni_Empleado(Integer.parseInt(labelEmpleadoDni.getText()));
  
        if (CNProd.MtdRegistrarProducto(objEProd)==true)
        {
            JOptionPane.showMessageDialog(null,"producto guardado");
        }
        else{
            JOptionPane.showMessageDialog(null,"error al guardar");
        }
        
        MtdLimpiar();
    }//GEN-LAST:event_btnRegistrarActionPerformed

    private void btnCerrarActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_btnCerrarActionPerformed
        FrmLogin FrmLog= new FrmLogin();
        FrmLog.show();
        this.dispose();
    }//GEN-LAST:event_btnCerrarActionPerformed

    private void cmbMarcaItemStateChanged(java.awt.event.ItemEvent evt) {//GEN-FIRST:event_cmbMarcaItemStateChanged
        ResultSet rs;
        String value= cmbMarca.getSelectedItem().toString(); 
        objEMarca.setNombre_marca(value);
        rs=objCProd.MtdBucarMarcaID(objEMarca);
        try {
            while (rs.next())
                {
                    label_IDMarca.setText(Integer.toString(rs.getInt("id")));        
                }
            } catch (SQLException ex) {
                System.out.println(ex);
            }    
    }//GEN-LAST:event_cmbMarcaItemStateChanged
    
   
    
    private void MtdLimpiar(){
        //txtMarca.setText("");
        txtNombre.setText("");
        txtPCompra.setText("");
        txtPVenta.setText("");
        txtDescripcion.setText("");
        txtStockRefe.setText("");
        txtStock.setText("");
        txtEstado.setText("");
        cmbxCategoria.setSelectedIndex(0);
        //cmbxProveedor.setSelectedIndex(0);
    }
    /*
    public void mtdCargo_id(){
        ClsEEmpleado objEEmp=new ClsEEmpleado();
        ClsNEmpleado objEmp=new ClsNEmpleado();
        ResultSet rs;
        rs=objEmp.MtdCargo_id(objEEmp);
        int cargo=12;
        
        try {
                    while (rs.next())
                        {
                            cargo = rs.getInt("Cargo_id");
                            
                            
                        }
                    } catch (SQLException ex) {
                        System.out.println(ex);
                    }  
        
        labelCargo_id.setText(Integer.toString(cargo));
    
    }
    */
    public static void main(String args[]) {
        /* Set the Nimbus look and feel */
        //<editor-fold defaultstate="collapsed" desc=" Look and feel setting code (optional) ">
        /* If Nimbus (introduced in Java SE 6) is not available, stay with the default look and feel.
         * For details see http://download.oracle.com/javase/tutorial/uiswing/lookandfeel/plaf.html 
         */
        try {
            for (javax.swing.UIManager.LookAndFeelInfo info : javax.swing.UIManager.getInstalledLookAndFeels()) {
                if ("Nimbus".equals(info.getName())) {
                    javax.swing.UIManager.setLookAndFeel(info.getClassName());
                    break;
                }
            }
        } catch (ClassNotFoundException ex) {
            java.util.logging.Logger.getLogger(FrmProductos.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        } catch (InstantiationException ex) {
            java.util.logging.Logger.getLogger(FrmProductos.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        } catch (IllegalAccessException ex) {
            java.util.logging.Logger.getLogger(FrmProductos.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        } catch (javax.swing.UnsupportedLookAndFeelException ex) {
            java.util.logging.Logger.getLogger(FrmProductos.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        }
        //</editor-fold>

        /* Create and display the form */
        java.awt.EventQueue.invokeLater(new Runnable() {
            public void run() {
                new FrmProductos().setVisible(true);
            }
        });
    }

    // Variables declaration - do not modify//GEN-BEGIN:variables
    private javax.swing.JButton btnCerrar;
    private javax.swing.JButton btnLimpiar;
    private javax.swing.JButton btnNuevaCate;
    private javax.swing.JButton btnNuevoProd;
    private javax.swing.JButton btnRegistrar;
    private javax.swing.JComboBox<String> cmbMarca;
    public static javax.swing.JComboBox<String> cmbxCategoria;
    private javax.swing.JLabel jLabel1;
    private javax.swing.JLabel jLabel11;
    private javax.swing.JLabel jLabel12;
    private javax.swing.JLabel jLabel13;
    private javax.swing.JLabel jLabel14;
    private javax.swing.JLabel jLabel15;
    private javax.swing.JLabel jLabel16;
    private javax.swing.JLabel jLabel2;
    private javax.swing.JLabel jLabel3;
    private javax.swing.JLabel jLabel4;
    private javax.swing.JLabel jLabel5;
    private javax.swing.JLabel jLabel6;
    private javax.swing.JLabel jLabel7;
    private javax.swing.JLabel jLabel8;
    private javax.swing.JLabel jLabel9;
    private javax.swing.JScrollPane jScrollPane1;
    public static javax.swing.JLabel labelEmpleadoDni;
    private javax.swing.JLabel labelFecha;
    private javax.swing.JLabel labelHora;
    private javax.swing.JLabel labelId_Cate;
    private javax.swing.JLabel label_IDMarca;
    private javax.swing.JLabel label_IdProv;
    private javax.swing.JTextArea txtDescripcion;
    private javax.swing.JTextField txtEmpleado_id;
    private javax.swing.JTextField txtEstado;
    private javax.swing.JTextField txtImagen;
    private javax.swing.JTextField txtNombre;
    private javax.swing.JTextField txtPCompra;
    private javax.swing.JTextField txtPVenta;
    private javax.swing.JTextField txtStock;
    private javax.swing.JTextField txtStockRefe;
    // End of variables declaration//GEN-END:variables
}
