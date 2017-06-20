package com.kristijangeorgiev.softdelete.controller;

import com.kristijangeorgiev.softdelete.model.entity.Role;
import com.kristijangeorgiev.softdelete.repository.RoleRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

/**
 * Created by thanhpd on 6/20/2017.
 */
@RestController
@RequestMapping("roles")
public class RoleController
{

    @Autowired
    private RoleRepository roleRepository;

    @RequestMapping(method = RequestMethod.GET)
    public ResponseEntity<Iterable<Role>> testGetRole()
    {
        Iterable<Role> allRoles = roleRepository.findAllActive();
        allRoles.forEach(role -> {

        });
        return ResponseEntity.ok(allRoles);
    }
}
