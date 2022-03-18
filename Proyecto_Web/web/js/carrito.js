/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

const Clickbutton = document.querySelectorAll('.button');

Clickbutton.forEach(btn =>{
    btn.addEventListener('click', console.log('button'));
});

