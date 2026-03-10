package com.example.calculadoraamor

import android.os.Bundle
import android.widget.Toast
import androidx.appcompat.app.AppCompatActivity
import com.example.calculadoraamor.databinding.ActivityMainBinding

class MainActivity : AppCompatActivity() {

    private lateinit var binding: ActivityMainBinding

    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        binding = ActivityMainBinding.inflate(layoutInflater)
        setContentView(binding.root)

        binding.buttonCalcular.setOnClickListener {
            val numero1 = binding.editTextNumero1.text.toString()
            val numero2 = binding.editTextNumero2.text.toString()

            if (numero1 == "6" && numero2 == "7") {
                Toast.makeText(this, "Sofia, Carlos te ama muito!", Toast.LENGTH_LONG).show()
            } else {
                Toast.makeText(this, "Números diferentes", Toast.LENGTH_SHORT).show()
            }
        }
    }
}