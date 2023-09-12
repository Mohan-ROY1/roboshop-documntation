-name: Install and Run nginx
 hosts: mongodb
 become: yes
 tasks:
 - name: Install nginx
   ansible.builtin.yum:
        name: nginx
        state: installed
 - name: start nginx
   ansible.builtin.service:
        name: nginx
        state: started                     