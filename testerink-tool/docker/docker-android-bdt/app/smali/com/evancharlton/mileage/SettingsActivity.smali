.class public Lcom/evancharlton/mileage/SettingsActivity;
.super Landroid/preference/PreferenceActivity;
.source "SettingsActivity.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceClickListener;


# static fields
.field public static final NAME:Ljava/lang/String; = "com.evancharlton.mileage_preferences"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 21
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 27
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 28
    const v0, 0x7f07001c

    invoke-virtual {p0, v0}, Lcom/evancharlton/mileage/SettingsActivity;->addPreferencesFromResource(I)V

    .line 30
    const-string v0, "about"

    invoke-virtual {p0, v0}, Lcom/evancharlton/mileage/SettingsActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    .line 33
    .local v0, "about":Landroid/preference/Preference;
    const/4 v1, 0x1

    :try_start_0
    invoke-virtual {p0}, Lcom/evancharlton/mileage/SettingsActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {p0}, Lcom/evancharlton/mileage/SettingsActivity;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v2

    iget-object v2, v2, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 37
    .local v2, "version":Ljava/lang/String;
    goto :goto_0

    .line 35
    .end local v2    # "version":Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 36
    .local v2, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v2, "<unknown version>"

    .line 38
    .local v2, "version":Ljava/lang/String;
    :goto_0
    const v3, 0x7f08009d

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v2, v1, v4

    invoke-virtual {p0, v3, v1}, Lcom/evancharlton/mileage/SettingsActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 39
    new-instance v1, Lcom/evancharlton/mileage/SettingsActivity$1;

    invoke-direct {v1, p0}, Lcom/evancharlton/mileage/SettingsActivity$1;-><init>(Lcom/evancharlton/mileage/SettingsActivity;)V

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 47
    const-string v1, "units"

    invoke-virtual {p0, v1}, Lcom/evancharlton/mileage/SettingsActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 49
    return-void
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 8
    .param p1, "id"    # I

    .line 65
    const v0, 0x7f0800b3

    const v1, 0x104000a

    if-eq p1, v0, :cond_1

    const v0, 0x7f0800b5

    if-eq p1, v0, :cond_0

    .line 104
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreateDialog(I)Landroid/app/Dialog;

    move-result-object v0

    return-object v0

    .line 67
    :cond_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f08012f

    .line 68
    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v2, 0x7f080115

    .line 69
    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v2, Lcom/evancharlton/mileage/SettingsActivity$2;

    invoke-direct {v2, p0, p1}, Lcom/evancharlton/mileage/SettingsActivity$2;-><init>(Lcom/evancharlton/mileage/SettingsActivity;I)V

    .line 70
    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 76
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 67
    return-object v0

    .line 78
    :cond_1
    sget-object v3, Lcom/evancharlton/mileage/provider/tables/FieldsTable;->URI:Landroid/net/Uri;

    sget-object v4, Lcom/evancharlton/mileage/provider/tables/FieldsTable;->PROJECTION:[Ljava/lang/String;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v2, p0

    invoke-virtual/range {v2 .. v7}, Lcom/evancharlton/mileage/SettingsActivity;->managedQuery(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 80
    .local v0, "c":Landroid/database/Cursor;
    const-string v2, "com.evancharlton.mileage_preferences"

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Lcom/evancharlton/mileage/SettingsActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 82
    .local v2, "prefs":Landroid/content/SharedPreferences;
    new-instance v3, Landroid/app/AlertDialog$Builder;

    invoke-direct {v3, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const/4 v4, -0x1

    const-string v5, "title"

    new-instance v6, Lcom/evancharlton/mileage/SettingsActivity$4;

    invoke-direct {v6, p0, v0, v2}, Lcom/evancharlton/mileage/SettingsActivity$4;-><init>(Lcom/evancharlton/mileage/SettingsActivity;Landroid/database/Cursor;Landroid/content/SharedPreferences;)V

    .line 83
    invoke-virtual {v3, v0, v4, v5, v6}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems(Landroid/database/Cursor;ILjava/lang/String;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    new-instance v4, Lcom/evancharlton/mileage/SettingsActivity$3;

    invoke-direct {v4, p0, p1}, Lcom/evancharlton/mileage/SettingsActivity$3;-><init>(Lcom/evancharlton/mileage/SettingsActivity;I)V

    .line 96
    invoke-virtual {v3, v1, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v3, 0x7f080030

    .line 102
    invoke-virtual {v1, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    .line 82
    return-object v1
.end method

.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 3
    .param p1, "preference"    # Landroid/preference/Preference;

    .line 53
    const-string v0, "units"

    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 54
    const v0, 0x7f0800b5

    invoke-virtual {p0, v0}, Lcom/evancharlton/mileage/SettingsActivity;->showDialog(I)V

    .line 55
    return v1

    .line 56
    :cond_0
    const-string v0, "meta_field"

    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 57
    const v0, 0x7f0800b3

    invoke-virtual {p0, v0}, Lcom/evancharlton/mileage/SettingsActivity;->showDialog(I)V

    .line 58
    return v1

    .line 60
    :cond_1
    const/4 v0, 0x0

    return v0
.end method
