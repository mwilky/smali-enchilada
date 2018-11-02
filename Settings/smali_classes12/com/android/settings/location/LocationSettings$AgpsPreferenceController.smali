.class public Lcom/android/settings/location/LocationSettings$AgpsPreferenceController;
.super Lcom/android/settings/core/BasePreferenceController;
.source "LocationSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/location/LocationSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AgpsPreferenceController"
.end annotation


# static fields
.field private static final ASSISTED_GPS_SUPL_HOST:Ljava/lang/String; = "assisted_gps_supl_host"

.field private static final ASSISTED_GPS_SUPL_PORT:Ljava/lang/String; = "assisted_gps_supl_port"

.field private static final KEY_ASSISTED_GPS:Ljava/lang/String; = "assisted_gps"

.field private static final PROPERTIES_FILE:Ljava/lang/String; = "/etc/gps.conf"


# instance fields
.field private mAgpsPreference:Landroid/support/v7/preference/CheckBoxPreference;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const-string v0, "assisted_gps"

    invoke-direct {p0, p1, v0}, Lcom/android/settings/core/BasePreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public displayPreference(Landroid/support/v7/preference/PreferenceScreen;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/android/settings/core/BasePreferenceController;->displayPreference(Landroid/support/v7/preference/PreferenceScreen;)V

    const-string v0, "assisted_gps"

    invoke-virtual {p1, v0}, Landroid/support/v7/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/support/v7/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/android/settings/location/LocationSettings$AgpsPreferenceController;->mAgpsPreference:Landroid/support/v7/preference/CheckBoxPreference;

    return-void
.end method

.method public getAvailabilityStatus()I
    .locals 2

    iget-object v0, p0, Lcom/android/settings/location/LocationSettings$AgpsPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f050006

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const/4 v0, 0x2

    :goto_0
    return v0
.end method

.method public getPreferenceKey()Ljava/lang/String;
    .locals 1

    const-string v0, "assisted_gps"

    return-object v0
.end method

.method public handlePreferenceTreeClick(Landroid/support/v7/preference/Preference;)Z
    .locals 8

    const-string v0, "assisted_gps"

    invoke-virtual {p1}, Landroid/support/v7/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/settings/location/LocationSettings$AgpsPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/location/LocationSettings$AgpsPreferenceController;->mAgpsPreference:Landroid/support/v7/preference/CheckBoxPreference;

    invoke-virtual {v1}, Landroid/support/v7/preference/CheckBoxPreference;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v2, "assisted_gps_supl_host"

    invoke-static {v0, v2}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    const-string v2, "assisted_gps_supl_port"

    invoke-static {v0, v2}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_2

    :cond_0
    const/4 v2, 0x0

    move-object v3, v2

    :try_start_0
    new-instance v4, Ljava/util/Properties;

    invoke-direct {v4}, Ljava/util/Properties;-><init>()V

    new-instance v5, Ljava/io/File;

    const-string v6, "/etc/gps.conf"

    invoke-direct {v5, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v6, Ljava/io/FileInputStream;

    invoke-direct {v6, v5}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    move-object v3, v6

    invoke-virtual {v4, v3}, Ljava/util/Properties;->load(Ljava/io/InputStream;)V

    const-string v6, "assisted_gps_supl_host"

    const-string v7, "SUPL_HOST"

    invoke-virtual {v4, v7, v2}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v0, v6, v7}, Landroid/provider/Settings$Global;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    const-string v6, "assisted_gps_supl_port"

    const-string v7, "SUPL_PORT"

    invoke-virtual {v4, v7, v2}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v6, v2}, Landroid/provider/Settings$Global;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    nop

    :try_start_1
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catchall_0
    move-exception v2

    goto :goto_1

    :catch_0
    move-exception v2

    :try_start_2
    const-string v4, "LocationSettings"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Could not open GPS configuration file /etc/gps.conf, e="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v3, :cond_2

    :try_start_3
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    :goto_0
    goto :goto_3

    :catch_1
    move-exception v2

    goto :goto_0

    :goto_1
    if-eqz v3, :cond_1

    :try_start_4
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_2

    :catch_2
    move-exception v4

    :cond_1
    :goto_2
    throw v2

    :cond_2
    :goto_3
    const-string v2, "assisted_gps_enabled"

    nop

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    const/4 v2, 0x1

    return v2

    :cond_3
    const/4 v0, 0x0

    return v0
.end method

.method public updateState(Landroid/support/v7/preference/Preference;)V
    .locals 4

    iget-object v0, p0, Lcom/android/settings/location/LocationSettings$AgpsPreferenceController;->mAgpsPreference:Landroid/support/v7/preference/CheckBoxPreference;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/location/LocationSettings$AgpsPreferenceController;->mAgpsPreference:Landroid/support/v7/preference/CheckBoxPreference;

    iget-object v1, p0, Lcom/android/settings/location/LocationSettings$AgpsPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "assisted_gps_enabled"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    goto :goto_0

    :cond_0
    move v2, v3

    :goto_0
    invoke-virtual {v0, v2}, Landroid/support/v7/preference/CheckBoxPreference;->setChecked(Z)V

    :cond_1
    return-void
.end method
