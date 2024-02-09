Locales = {}

Locales['en'] = {
    ['progbar_text'] = 'You equip loadout...',
    ['notify_error'] = 'You gave up...',
    ['timeout_error'] = 'This much time left',
    ['notify_success'] = 'Successfully Received Loadout',
    ['qb_menu_header'] = 'Loadout Menu',
    ['target_label'] = 'Equip Loadout',
    ['ox_menu_header'] = 'Loadout Menu',
}

Locales['tr'] = {
    ['progbar_text'] = 'Ekipman kuşanıyorsun...',
    ['notify_error'] = 'Vazgeçtin...',
    ['timeout_error'] = 'Şu kadar süre kaldı',
    ['notify_success'] = 'Başarıyla Ekipmanları aldın',
    ['qb_menu_header'] = 'Ekipman Menüsü',
    ['ox_menu_header'] = 'Ekipman Menüsü',
    ['target_label'] = 'Ekipman Kuşan',
}


local locale = Config.Language or 'en'

function GetLocaleString(key)
    if Locales[locale] then
        return Locales[locale][key] or 'Localization key not found'
    else
        return 'Locale not found'
    end
end
