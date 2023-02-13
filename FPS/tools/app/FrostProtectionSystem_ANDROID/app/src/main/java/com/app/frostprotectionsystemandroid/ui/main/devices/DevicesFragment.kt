package com.app.frostprotectionsystemandroid.ui.main.devices

import android.os.Bundle
import android.view.LayoutInflater
import android.view.View
import android.view.ViewGroup
import com.app.frostprotectionsystemandroid.R
import com.app.frostprotectionsystemandroid.ui.base.BaseFragment

/**
 *
 * @author at-tienhuynh3
 */
class DevicesFragment : BaseFragment() {

    companion object {
        internal fun newInstance() = DevicesFragment()
    }

    private var ui: View? = null

    override fun onCreateView(inflater: LayoutInflater, container: ViewGroup?, savedInstanceState: Bundle?): View? {
        ui = inflater.inflate(R.layout.fragment_sign_up, container, false)
        return ui
    }

    override fun onBindViewModel() {
        //No-op
    }
}