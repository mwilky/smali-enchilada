.class public Lcom/oneplus/settings/defaultapp/DefaultAppUtils;
.super Ljava/lang/Object;
.source "DefaultAppUtils.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "DefaultAppUtils"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static clearDefaultApp(Landroid/content/Context;Ljava/lang/String;)V
    .locals 8
    .param p0, "ctx"    # Landroid/content/Context;
    .param p1, "packageName"    # Ljava/lang/String;

    .line 172
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 173
    .local v0, "packageManager":Landroid/content/pm/PackageManager;
    sget-object v1, Lcom/oneplus/settings/defaultapp/DefaultAppConstants;->DEFAULTAPP_VALUE_LIST_KEY:[Ljava/lang/String;

    .line 174
    .local v1, "keys":[Ljava/lang/String;
    const/4 v2, 0x0

    .line 175
    .local v2, "needClear":Z
    array-length v3, v1

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_1

    aget-object v5, v1, v4

    .line 176
    .local v5, "appType":Ljava/lang/String;
    invoke-static {p0, v5}, Lcom/oneplus/settings/defaultapp/DataHelper;->getDefaultAppPackageName(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 177
    .local v6, "p":Ljava/lang/String;
    if-eqz v6, :cond_0

    invoke-virtual {v6, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 178
    const/4 v2, 0x1

    .line 179
    const-string v7, ""

    invoke-static {p0, v5, v7}, Lcom/oneplus/settings/defaultapp/DataHelper;->setDefaultAppPackageName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 175
    .end local v5    # "appType":Ljava/lang/String;
    .end local v6    # "p":Ljava/lang/String;
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 182
    :cond_1
    if-eqz v2, :cond_2

    .line 183
    invoke-virtual {v0, p1}, Landroid/content/pm/PackageManager;->clearPackagePreferredActivities(Ljava/lang/String;)V

    .line 185
    :cond_2
    return-void
.end method

.method public static create(Landroid/content/Context;I)Lcom/oneplus/settings/defaultapp/apptype/DefaultAppTypeInfo;
    .locals 1
    .param p0, "ctx"    # Landroid/content/Context;
    .param p1, "type"    # I

    .line 54
    packed-switch p1, :pswitch_data_0

    .line 66
    const/4 v0, 0x0

    return-object v0

    .line 62
    :pswitch_0
    new-instance v0, Lcom/oneplus/settings/defaultapp/apptype/DefaultAppTypeEmail;

    invoke-direct {v0}, Lcom/oneplus/settings/defaultapp/apptype/DefaultAppTypeEmail;-><init>()V

    return-object v0

    .line 60
    :pswitch_1
    new-instance v0, Lcom/oneplus/settings/defaultapp/apptype/DefaultAppTypeMusic;

    invoke-direct {v0}, Lcom/oneplus/settings/defaultapp/apptype/DefaultAppTypeMusic;-><init>()V

    return-object v0

    .line 58
    :pswitch_2
    new-instance v0, Lcom/oneplus/settings/defaultapp/apptype/DefaultAppTypeGallery;

    invoke-direct {v0}, Lcom/oneplus/settings/defaultapp/apptype/DefaultAppTypeGallery;-><init>()V

    return-object v0

    .line 56
    :pswitch_3
    new-instance v0, Lcom/oneplus/settings/defaultapp/apptype/DefaultAppTypeCamera;

    invoke-direct {v0}, Lcom/oneplus/settings/defaultapp/apptype/DefaultAppTypeCamera;-><init>()V

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static create(Landroid/content/Context;Ljava/lang/String;)Lcom/oneplus/settings/defaultapp/apptype/DefaultAppTypeInfo;
    .locals 5
    .param p0, "ctx"    # Landroid/content/Context;
    .param p1, "type"    # Ljava/lang/String;

    .line 41
    sget-object v0, Lcom/oneplus/settings/defaultapp/DefaultAppConstants;->DEFAULTAPP_VALUE_LIST_KEY:[Ljava/lang/String;

    .line 42
    .local v0, "mKey":[Ljava/lang/String;
    const/4 v1, 0x0

    .line 43
    .local v1, "pos":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v3, v0

    if-ge v2, v3, :cond_1

    .line 44
    aget-object v3, v0, v2

    .line 45
    .local v3, "k":Ljava/lang/String;
    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 46
    move v1, v2

    .line 47
    goto :goto_1

    .line 43
    .end local v3    # "k":Ljava/lang/String;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 50
    .end local v2    # "i":I
    :cond_1
    :goto_1
    invoke-static {p0, v1}, Lcom/oneplus/settings/defaultapp/DefaultAppUtils;->create(Landroid/content/Context;I)Lcom/oneplus/settings/defaultapp/apptype/DefaultAppTypeInfo;

    move-result-object v2

    return-object v2
.end method

.method public static getDefaultAppName(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "appType"    # Ljava/lang/String;

    .line 90
    invoke-static {p0, p1}, Lcom/oneplus/settings/defaultapp/DataHelper;->getDefaultAppPackageName(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 91
    .local v0, "packageName":Ljava/lang/String;
    invoke-static {p0, p1}, Lcom/oneplus/settings/defaultapp/DefaultAppUtils;->getSystemDefaultPackageName(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 92
    .local v1, "systemDefaultPackageName":Ljava/lang/String;
    invoke-static {p0, v0}, Lcom/oneplus/settings/defaultapp/DefaultAppUtils;->isAppExist(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    .line 93
    .local v2, "isAppExist":Z
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    const/4 v4, 0x0

    if-nez v3, :cond_2

    .line 94
    if-eqz v2, :cond_1

    .line 95
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 96
    const v3, 0x7f12117c

    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 98
    :cond_0
    invoke-static {p0, v0}, Lcom/oneplus/settings/defaultapp/DefaultAppUtils;->queryAppName(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 101
    :cond_1
    return-object v4

    .line 104
    :cond_2
    return-object v4
.end method

.method public static getDefaultAppPackageName(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "appType"    # Ljava/lang/String;

    .line 109
    invoke-static {p0, p1}, Lcom/oneplus/settings/defaultapp/DataHelper;->getDefaultAppPackageName(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 111
    .local v0, "packageName":Ljava/lang/String;
    invoke-static {p0, v0}, Lcom/oneplus/settings/defaultapp/DefaultAppUtils;->isAppExist(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    .line 112
    .local v1, "isAppExist":Z
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_1

    .line 113
    if-eqz v1, :cond_0

    .line 114
    return-object v0

    .line 116
    :cond_0
    return-object v3

    .line 119
    :cond_1
    return-object v3
.end method

.method public static getDefaultAppValueList()[Ljava/lang/String;
    .locals 1

    .line 70
    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->isO2()Z

    move-result v0

    if-nez v0, :cond_0

    .line 71
    sget-object v0, Lcom/oneplus/settings/defaultapp/DefaultAppConstants;->DEFAULTAPP_VALUE_LIST_H2OS:[Ljava/lang/String;

    return-object v0

    .line 73
    :cond_0
    sget-object v0, Lcom/oneplus/settings/defaultapp/DefaultAppConstants;->DEFAULTAPP_VALUE_LIST_O2OS:[Ljava/lang/String;

    return-object v0
.end method

.method public static getKeyTypeInt(Ljava/lang/String;)I
    .locals 5
    .param p0, "type"    # Ljava/lang/String;

    .line 28
    sget-object v0, Lcom/oneplus/settings/defaultapp/DefaultAppConstants;->DEFAULTAPP_VALUE_LIST_KEY:[Ljava/lang/String;

    .line 29
    .local v0, "mKey":[Ljava/lang/String;
    const/4 v1, 0x0

    .line 30
    .local v1, "pos":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v3, v0

    if-ge v2, v3, :cond_1

    .line 31
    aget-object v3, v0, v2

    .line 32
    .local v3, "k":Ljava/lang/String;
    invoke-virtual {v3, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 33
    move v1, v2

    .line 34
    goto :goto_1

    .line 30
    .end local v3    # "k":Ljava/lang/String;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 37
    .end local v2    # "i":I
    :cond_1
    :goto_1
    return v1
.end method

.method public static getKeyTypeString(I)Ljava/lang/String;
    .locals 1
    .param p0, "type"    # I

    .line 24
    sget-object v0, Lcom/oneplus/settings/defaultapp/DefaultAppConstants;->DEFAULTAPP_VALUE_LIST_KEY:[Ljava/lang/String;

    aget-object v0, v0, p0

    return-object v0
.end method

.method public static getSystemDefaultPackageName(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p0, "ctx"    # Landroid/content/Context;
    .param p1, "appType"    # Ljava/lang/String;

    .line 78
    sget-object v0, Lcom/oneplus/settings/defaultapp/DefaultAppConstants;->DEFAULTAPP_VALUE_LIST_KEY:[Ljava/lang/String;

    .line 79
    .local v0, "mKey":[Ljava/lang/String;
    invoke-static {}, Lcom/oneplus/settings/defaultapp/DefaultAppUtils;->getDefaultAppValueList()[Ljava/lang/String;

    move-result-object v1

    .line 80
    .local v1, "mValue":[Ljava/lang/String;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v3, v0

    if-ge v2, v3, :cond_1

    .line 81
    aget-object v3, v0, v2

    .line 82
    .local v3, "k":Ljava/lang/String;
    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 83
    aget-object v4, v1, v2

    return-object v4

    .line 80
    .end local v3    # "k":Ljava/lang/String;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 86
    .end local v2    # "i":I
    :cond_1
    const/4 v2, 0x0

    return-object v2
.end method

.method public static isAppExist(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "packageName"    # Ljava/lang/String;

    .line 124
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 125
    return v1

    .line 128
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 129
    .local v0, "packageManager":Landroid/content/pm/PackageManager;
    const/16 v2, 0x80

    invoke-virtual {v0, p1, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 132
    .end local v0    # "packageManager":Landroid/content/pm/PackageManager;
    nop

    .line 133
    const/4 v0, 0x1

    return v0

    .line 130
    :catch_0
    move-exception v0

    .line 131
    .local v0, "e":Ljava/lang/Exception;
    return v1
.end method

.method public static queryAppName(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "packageName"    # Ljava/lang/String;

    .line 137
    const-string v0, ""

    .line 139
    .local v0, "appName":Ljava/lang/String;
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 140
    .local v1, "packageManager":Landroid/content/pm/PackageManager;
    const/16 v2, 0x80

    invoke-virtual {v1, p1, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    .line 141
    .local v2, "appInfo":Landroid/content/pm/ApplicationInfo;
    invoke-virtual {v2, v1}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v3

    .line 144
    .end local v1    # "packageManager":Landroid/content/pm/PackageManager;
    .end local v2    # "appInfo":Landroid/content/pm/ApplicationInfo;
    goto :goto_0

    .line 142
    :catch_0
    move-exception v1

    .line 143
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 145
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_0
    return-object v0
.end method

.method public static resetDefaultApp(Landroid/content/Context;Ljava/lang/String;)V
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "appType"    # Ljava/lang/String;

    .line 149
    invoke-static {p0}, Lcom/oneplus/settings/defaultapp/DefaultAppLogic;->getInstance(Landroid/content/Context;)Lcom/oneplus/settings/defaultapp/DefaultAppLogic;

    move-result-object v0

    .line 150
    .local v0, "logic":Lcom/oneplus/settings/defaultapp/DefaultAppLogic;
    invoke-virtual {v0, p1}, Lcom/oneplus/settings/defaultapp/DefaultAppLogic;->getAppInfoList(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    .line 151
    .local v1, "appInfoList":Ljava/util/List;, "Ljava/util/List<Lcom/oneplus/settings/defaultapp/DefaultAppActivityInfo;>;"
    invoke-virtual {v0, p1, v1}, Lcom/oneplus/settings/defaultapp/DefaultAppLogic;->getAppPackageNameList(Ljava/lang/String;Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    .line 152
    .local v2, "packageNameList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {p0, p1}, Lcom/oneplus/settings/defaultapp/DefaultAppUtils;->getSystemDefaultPackageName(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 153
    .local v3, "defaultPackageName":Ljava/lang/String;
    invoke-virtual {v0, p1, v2, v3}, Lcom/oneplus/settings/defaultapp/DefaultAppLogic;->getDefaultAppPosition(Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)I

    move-result v4

    .line 154
    .local v4, "position":I
    invoke-virtual {v0, p1, v1, v2, v4}, Lcom/oneplus/settings/defaultapp/DefaultAppLogic;->setDefaultAppPosition(Ljava/lang/String;Ljava/util/List;Ljava/util/List;I)V

    .line 155
    return-void
.end method

.method public static updateDefaultApp(Landroid/content/Context;)V
    .locals 9
    .param p0, "ctx"    # Landroid/content/Context;

    .line 158
    invoke-static {p0}, Lcom/oneplus/settings/defaultapp/DefaultAppLogic;->getInstance(Landroid/content/Context;)Lcom/oneplus/settings/defaultapp/DefaultAppLogic;

    move-result-object v0

    .line 159
    .local v0, "logic":Lcom/oneplus/settings/defaultapp/DefaultAppLogic;
    sget-object v1, Lcom/oneplus/settings/defaultapp/DefaultAppConstants;->DEFAULTAPP_VALUE_LIST_KEY:[Ljava/lang/String;

    .line 160
    .local v1, "mKey":[Ljava/lang/String;
    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    aget-object v4, v1, v3

    .line 161
    .local v4, "appType":Ljava/lang/String;
    invoke-static {p0, v4}, Lcom/oneplus/settings/defaultapp/DataHelper;->getDefaultAppPackageName(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 162
    .local v5, "packageName":Ljava/lang/String;
    invoke-virtual {v0, v4}, Lcom/oneplus/settings/defaultapp/DefaultAppLogic;->getAppInfoList(Ljava/lang/String;)Ljava/util/List;

    move-result-object v6

    .line 163
    .local v6, "appInfoList":Ljava/util/List;, "Ljava/util/List<Lcom/oneplus/settings/defaultapp/DefaultAppActivityInfo;>;"
    invoke-virtual {v0, v4, v6}, Lcom/oneplus/settings/defaultapp/DefaultAppLogic;->getAppPackageNameList(Ljava/lang/String;Ljava/util/List;)Ljava/util/List;

    move-result-object v7

    .line 164
    .local v7, "packageNameList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v5, :cond_0

    invoke-interface {v7, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 165
    invoke-virtual {v0, v4, v7, v5}, Lcom/oneplus/settings/defaultapp/DefaultAppLogic;->getDefaultAppPosition(Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)I

    move-result v8

    .line 166
    .local v8, "position":I
    invoke-virtual {v0, v4, v6, v7, v8}, Lcom/oneplus/settings/defaultapp/DefaultAppLogic;->setDefaultAppPosition(Ljava/lang/String;Ljava/util/List;Ljava/util/List;I)V

    .line 160
    .end local v4    # "appType":Ljava/lang/String;
    .end local v5    # "packageName":Ljava/lang/String;
    .end local v6    # "appInfoList":Ljava/util/List;, "Ljava/util/List<Lcom/oneplus/settings/defaultapp/DefaultAppActivityInfo;>;"
    .end local v7    # "packageNameList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v8    # "position":I
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 169
    :cond_1
    return-void
.end method
