.class public Lcom/android/server/am/OnePlusAppControlModeService;
.super Ljava/lang/Object;
.source "OnePlusAppControlModeService.java"


# static fields
.field private static final APPCONTROL_PKG_BLACKLIST:I = 0x0

.field private static final APPCONTROL_PKG_WHITELIST:I = 0x1

.field public static DEBUG_ONEPLUS:Z = false

.field private static final OEM_DOZE_CLOSE:I = 0x0

.field private static final OEM_DOZE_MODE_POLICY_KEY:Ljava/lang/String; = "doze_mode_policy"

.field private static final OEM_DOZE_OPEN:I = 0x1

.field public static final TAG:Ljava/lang/String; = "OnePlusAppBootManager"

.field private static sDeviceIdleService:Landroid/os/IDeviceIdleController;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 37
    sget-boolean v0, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    sput-boolean v0, Lcom/android/server/am/OnePlusAppControlModeService;->DEBUG_ONEPLUS:Z

    .line 40
    const/4 v0, 0x0

    sput-object v0, Lcom/android/server/am/OnePlusAppControlModeService;->sDeviceIdleService:Landroid/os/IDeviceIdleController;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getAllAppControlModes(I)Ljava/util/List;
    .locals 13
    .param p0, "mode"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Lcom/oneplus/appboot/AppControlMode;",
            ">;"
        }
    .end annotation

    .line 67
    sget-boolean v0, Lcom/android/server/am/OnePlusAppControlModeService;->DEBUG_ONEPLUS:Z

    if-eqz v0, :cond_0

    .line 68
    const-string v0, "OnePlusAppBootManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AppControl#getAllAppControlModes # mode="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 70
    :cond_0
    const/4 v0, 0x0

    if-nez p0, :cond_7

    .line 71
    move-object v1, v0

    .line 73
    .local v1, "idleArray":[Ljava/lang/String;
    :try_start_0
    invoke-static {}, Lcom/android/server/am/OnePlusAppControlModeService;->getIdleController()Landroid/os/IDeviceIdleController;

    move-result-object v2

    invoke-interface {v2}, Landroid/os/IDeviceIdleController;->getUserPowerWhitelist()[Ljava/lang/String;

    move-result-object v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v1, v2

    .line 76
    goto :goto_0

    .line 74
    :catch_0
    move-exception v2

    .line 75
    .local v2, "e":Landroid/os/RemoteException;
    invoke-virtual {v2}, Landroid/os/RemoteException;->printStackTrace()V

    .line 77
    .end local v2    # "e":Landroid/os/RemoteException;
    :goto_0
    invoke-static {v0}, Lcom/android/server/am/OnePlusAppBootManager;->getInstance(Lcom/android/server/pm/PackageManagerService;)Lcom/android/server/am/OnePlusAppBootManager;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/android/server/am/OnePlusAppBootManager;->getAllAppBootModes(I)Ljava/util/List;

    move-result-object v0

    .line 78
    .local v0, "bootList":Ljava/util/List;, "Ljava/util/List<Lcom/oneplus/appboot/AppBootMode;>;"
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 79
    .local v3, "controlList":Ljava/util/List;, "Ljava/util/List<Lcom/oneplus/appboot/AppControlMode;>;"
    if-eqz v1, :cond_1

    array-length v4, v1

    goto :goto_1

    :cond_1
    move v4, v2

    .line 80
    .local v4, "idlesz":I
    :goto_1
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_5

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/oneplus/appboot/AppBootMode;

    .line 81
    .local v6, "bt":Lcom/oneplus/appboot/AppBootMode;
    const/4 v7, 0x0

    .line 82
    .local v7, "idleWhite":Z
    move v8, v2

    .local v8, "i":I
    :goto_3
    if-ge v8, v4, :cond_3

    .line 83
    iget-object v9, v6, Lcom/oneplus/appboot/AppBootMode;->packageName:Ljava/lang/String;

    aget-object v10, v1, v8

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 84
    const/4 v7, 0x1

    .line 85
    goto :goto_4

    .line 82
    :cond_2
    add-int/lit8 v8, v8, 0x1

    goto :goto_3

    .line 89
    .end local v8    # "i":I
    :cond_3
    :goto_4
    iget v8, v6, Lcom/oneplus/appboot/AppBootMode;->mode:I

    const/4 v9, 0x1

    if-ne v8, v9, :cond_4

    goto :goto_5

    :cond_4
    move v9, v2

    :goto_5
    move v8, v9

    .line 90
    .local v8, "appBootWhite":Z
    iget-object v9, v6, Lcom/oneplus/appboot/AppBootMode;->packageName:Ljava/lang/String;

    invoke-static {v9, v8, v7}, Lcom/android/server/am/OnePlusAppControlModeService;->getAppControlListMergedBlack(Ljava/lang/String;ZZ)Z

    move-result v9

    .line 91
    .local v9, "finalBlack":Z
    new-instance v10, Lcom/oneplus/appboot/AppControlMode;

    iget-object v11, v6, Lcom/oneplus/appboot/AppBootMode;->packageName:Ljava/lang/String;

    .line 92
    xor-int/lit8 v12, v9, 0x1

    invoke-direct {v10, v11, p0, v12}, Lcom/oneplus/appboot/AppControlMode;-><init>(Ljava/lang/String;II)V

    .line 91
    invoke-interface {v3, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 93
    .end local v6    # "bt":Lcom/oneplus/appboot/AppBootMode;
    .end local v7    # "idleWhite":Z
    .end local v8    # "appBootWhite":Z
    .end local v9    # "finalBlack":Z
    goto :goto_2

    .line 95
    :cond_5
    sget-boolean v2, Lcom/android/server/am/OnePlusAppControlModeService;->DEBUG_ONEPLUS:Z

    if-eqz v2, :cond_6

    .line 96
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_6
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_6

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/oneplus/appboot/AppControlMode;

    .line 97
    .local v5, "c":Lcom/oneplus/appboot/AppControlMode;
    const-string v6, "OnePlusAppBootManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "AppControl#getAllAppControlModes # c="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 98
    .end local v5    # "c":Lcom/oneplus/appboot/AppControlMode;
    goto :goto_6

    .line 100
    :cond_6
    return-object v3

    .line 102
    .end local v0    # "bootList":Ljava/util/List;, "Ljava/util/List<Lcom/oneplus/appboot/AppBootMode;>;"
    .end local v1    # "idleArray":[Ljava/lang/String;
    .end local v3    # "controlList":Ljava/util/List;, "Ljava/util/List<Lcom/oneplus/appboot/AppControlMode;>;"
    .end local v4    # "idlesz":I
    :cond_7
    return-object v0
.end method

.method public static getAppBootState()Z
    .locals 1

    .line 225
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/android/server/am/OnePlusAppBootManager;->getInstance(Lcom/android/server/pm/PackageManagerService;)Lcom/android/server/am/OnePlusAppBootManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/am/OnePlusAppBootManager;->getAppBootState()Z

    move-result v0

    return v0
.end method

.method private static getAppControlListMergedBlack(Ljava/lang/String;ZZ)Z
    .locals 4
    .param p0, "packageName"    # Ljava/lang/String;
    .param p1, "appBootValue"    # Z
    .param p2, "deviceIdleValue"    # Z

    .line 48
    sget-boolean v0, Lcom/android/server/am/OnePlusAppBootManager;->IN_USING:Z

    if-nez v0, :cond_0

    .line 49
    move p1, p2

    .line 51
    :cond_0
    const/4 v0, 0x1

    .line 52
    .local v0, "finalBlack":Z
    if-eqz p1, :cond_1

    if-eqz p2, :cond_1

    .line 53
    const/4 v0, 0x0

    .line 56
    :cond_1
    sget-boolean v1, Lcom/android/server/am/OnePlusAppControlModeService;->DEBUG_ONEPLUS:Z

    if-eqz v1, :cond_2

    .line 57
    const-string v1, "OnePlusAppBootManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "AppControl#getAppControlListMergedBlack # packageName="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", appBootValue="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", deviceIdleValue="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ",finalBlack="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 62
    :cond_2
    return v0
.end method

.method public static getAppControlMode(Ljava/lang/String;I)I
    .locals 4
    .param p0, "packageName"    # Ljava/lang/String;
    .param p1, "mode"    # I

    .line 107
    const/4 v0, -0x1

    .line 108
    .local v0, "ret":I
    if-nez p1, :cond_2

    .line 110
    :try_start_0
    invoke-static {}, Lcom/android/server/am/OnePlusAppControlModeService;->getIdleController()Landroid/os/IDeviceIdleController;

    move-result-object v1

    invoke-interface {v1, p0}, Landroid/os/IDeviceIdleController;->isPowerSaveWhitelistApp(Ljava/lang/String;)Z

    move-result v1

    .line 111
    .local v1, "idleWhite":Z
    const/4 v2, 0x0

    .line 112
    invoke-static {v2}, Lcom/android/server/am/OnePlusAppBootManager;->getInstance(Lcom/android/server/pm/PackageManagerService;)Lcom/android/server/am/OnePlusAppBootManager;

    move-result-object v2

    invoke-virtual {v2, p0}, Lcom/android/server/am/OnePlusAppBootManager;->getAppBootMode(Ljava/lang/String;)I

    move-result v2

    const/4 v3, 0x1

    if-ne v3, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    move v2, v3

    .line 113
    .local v2, "appBootWhite":Z
    invoke-static {p0, v2, v1}, Lcom/android/server/am/OnePlusAppControlModeService;->getAppControlListMergedBlack(Ljava/lang/String;ZZ)Z

    move-result v3
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 114
    .local v3, "finalBlack":Z
    if-eqz v3, :cond_1

    .line 115
    const/4 v0, 0x0

    goto :goto_1

    .line 117
    :cond_1
    const/4 v0, 0x1

    .line 122
    .end local v1    # "idleWhite":Z
    .end local v2    # "appBootWhite":Z
    .end local v3    # "finalBlack":Z
    :goto_1
    goto :goto_2

    .line 119
    :catch_0
    move-exception v1

    .line 120
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    .line 121
    const/4 v0, -0x2

    .line 124
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_2
    :goto_2
    sget-boolean v1, Lcom/android/server/am/OnePlusAppControlModeService;->DEBUG_ONEPLUS:Z

    if-eqz v1, :cond_3

    .line 125
    const-string v1, "OnePlusAppBootManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "AppControl#getAppControlMode # packageName="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", mode="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ",ret="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 127
    :cond_3
    return v0
.end method

.method public static getAppControlState(Landroid/content/Context;I)I
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "mode"    # I

    .line 165
    sget-boolean v0, Lcom/android/server/am/OnePlusAppControlModeService;->DEBUG_ONEPLUS:Z

    if-eqz v0, :cond_0

    .line 166
    const-string v0, "OnePlusAppBootManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AppControl#getAppControlState # mode="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 168
    :cond_0
    const/4 v0, -0x1

    .line 169
    .local v0, "ret":I
    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez p1, :cond_5

    .line 170
    invoke-static {}, Lcom/android/server/am/OnePlusAppControlModeService;->getAppBootState()Z

    move-result v3

    .line 171
    .local v3, "appboot":Z
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "doze_mode_policy"

    invoke-static {v4, v5, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-ne v4, v2, :cond_1

    move v1, v2

    nop

    .line 174
    .local v1, "doze":Z
    :cond_1
    if-eq v3, v1, :cond_3

    .line 175
    const/4 v0, 0x1

    .line 176
    invoke-static {p0, p1, v0}, Lcom/android/server/am/OnePlusAppControlModeService;->setAppControlState(Landroid/content/Context;II)I

    move-result v2

    .line 177
    .local v2, "result":I
    if-gez v2, :cond_2

    .line 178
    const-string v4, "OnePlusAppBootManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "AppControl# setAppControlState error # result="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ",mode="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ",on="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 180
    .end local v2    # "result":I
    :cond_2
    goto :goto_0

    :cond_3
    if-eqz v3, :cond_4

    .line 181
    const/4 v0, 0x1

    goto :goto_0

    .line 183
    :cond_4
    const/4 v0, 0x0

    .line 185
    .end local v1    # "doze":Z
    .end local v3    # "appboot":Z
    :goto_0
    goto :goto_1

    :cond_5
    if-ne p1, v2, :cond_6

    .line 186
    invoke-static {}, Lcom/android/server/am/OnePlusAppControlModeService;->getAppBootState()Z

    move-result v1

    move v0, v1

    goto :goto_1

    .line 187
    :cond_6
    const/4 v3, 0x2

    if-ne p1, v3, :cond_8

    .line 189
    nop

    .line 188
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "doze_mode_policy"

    invoke-static {v3, v4, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-ne v3, v2, :cond_7

    .line 189
    move v1, v2

    nop

    :cond_7
    move v0, v1

    .line 191
    :cond_8
    :goto_1
    return v0
.end method

.method private static getIdleController()Landroid/os/IDeviceIdleController;
    .locals 1

    .line 230
    sget-object v0, Lcom/android/server/am/OnePlusAppControlModeService;->sDeviceIdleService:Landroid/os/IDeviceIdleController;

    if-eqz v0, :cond_0

    .line 231
    sget-object v0, Lcom/android/server/am/OnePlusAppControlModeService;->sDeviceIdleService:Landroid/os/IDeviceIdleController;

    return-object v0

    .line 234
    :cond_0
    const-string v0, "deviceidle"

    .line 235
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/IDeviceIdleController$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IDeviceIdleController;

    move-result-object v0

    sput-object v0, Lcom/android/server/am/OnePlusAppControlModeService;->sDeviceIdleService:Landroid/os/IDeviceIdleController;

    .line 236
    sget-object v0, Lcom/android/server/am/OnePlusAppControlModeService;->sDeviceIdleService:Landroid/os/IDeviceIdleController;

    return-object v0
.end method

.method public static setAppControlMode(Ljava/lang/String;II)I
    .locals 3
    .param p0, "packageName"    # Ljava/lang/String;
    .param p1, "mode"    # I
    .param p2, "value"    # I

    .line 132
    sget-boolean v0, Lcom/android/server/am/OnePlusAppControlModeService;->DEBUG_ONEPLUS:Z

    if-eqz v0, :cond_0

    .line 133
    const-string v0, "OnePlusAppBootManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AppControl#setAppControlMode # packageName="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", mode="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", value="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 135
    :cond_0
    const/4 v0, 0x0

    .line 136
    .local v0, "ret":I
    if-nez p1, :cond_3

    .line 137
    const/4 v1, 0x0

    if-nez p2, :cond_1

    .line 138
    invoke-static {v1}, Lcom/android/server/am/OnePlusAppBootManager;->getInstance(Lcom/android/server/pm/PackageManagerService;)Lcom/android/server/am/OnePlusAppBootManager;

    move-result-object v1

    const/4 v2, 0x2

    .line 139
    invoke-virtual {v1, p0, v2}, Lcom/android/server/am/OnePlusAppBootManager;->setAppBootMode(Ljava/lang/String;I)I

    .line 141
    :try_start_0
    invoke-static {}, Lcom/android/server/am/OnePlusAppControlModeService;->getIdleController()Landroid/os/IDeviceIdleController;

    move-result-object v1

    invoke-interface {v1, p0}, Landroid/os/IDeviceIdleController;->removePowerSaveWhitelistApp(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 142
    :catch_0
    move-exception v1

    .line 143
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    .line 144
    const/4 v0, -0x2

    .line 145
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_0
    goto :goto_2

    .line 146
    :cond_1
    const/4 v2, 0x1

    if-ne p2, v2, :cond_2

    .line 147
    invoke-static {v1}, Lcom/android/server/am/OnePlusAppBootManager;->getInstance(Lcom/android/server/pm/PackageManagerService;)Lcom/android/server/am/OnePlusAppBootManager;

    move-result-object v1

    .line 148
    invoke-virtual {v1, p0, v2}, Lcom/android/server/am/OnePlusAppBootManager;->setAppBootMode(Ljava/lang/String;I)I

    .line 150
    :try_start_1
    invoke-static {}, Lcom/android/server/am/OnePlusAppControlModeService;->getIdleController()Landroid/os/IDeviceIdleController;

    move-result-object v1

    invoke-interface {v1, p0}, Landroid/os/IDeviceIdleController;->addPowerSaveWhitelistApp(Ljava/lang/String;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    .line 151
    :catch_1
    move-exception v1

    .line 152
    .restart local v1    # "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    .line 153
    const/4 v0, -0x2

    .line 154
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_1
    goto :goto_2

    .line 156
    :cond_2
    const/4 v0, -0x1

    .line 158
    :goto_2
    return v0

    .line 160
    :cond_3
    return v0
.end method

.method public static setAppControlState(Landroid/content/Context;II)I
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "mode"    # I
    .param p2, "on"    # I

    .line 196
    sget-boolean v0, Lcom/android/server/am/OnePlusAppControlModeService;->DEBUG_ONEPLUS:Z

    if-eqz v0, :cond_0

    .line 197
    const-string v0, "OnePlusAppBootManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AppControl#setAppControlState # mode="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", on="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 199
    :cond_0
    const/4 v0, -0x1

    .line 200
    .local v0, "ret":I
    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez p1, :cond_3

    .line 201
    if-ne p2, v3, :cond_1

    .line 202
    invoke-static {v1}, Lcom/android/server/am/OnePlusAppBootManager;->getInstance(Lcom/android/server/pm/PackageManagerService;)Lcom/android/server/am/OnePlusAppBootManager;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/android/server/am/OnePlusAppBootManager;->setAppBootState(Z)V

    .line 203
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "doze_mode_policy"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 204
    const/4 v0, 0x1

    goto :goto_0

    .line 205
    :cond_1
    if-nez p2, :cond_2

    .line 206
    invoke-static {v1}, Lcom/android/server/am/OnePlusAppBootManager;->getInstance(Lcom/android/server/pm/PackageManagerService;)Lcom/android/server/am/OnePlusAppBootManager;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/android/server/am/OnePlusAppBootManager;->setAppBootState(Z)V

    .line 207
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v3, "doze_mode_policy"

    invoke-static {v1, v3, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 208
    const/4 v0, 0x0

    goto :goto_0

    .line 210
    :cond_2
    const/4 v0, -0x2

    goto :goto_0

    .line 212
    :cond_3
    if-ne p1, v3, :cond_5

    .line 213
    invoke-static {v1}, Lcom/android/server/am/OnePlusAppBootManager;->getInstance(Lcom/android/server/pm/PackageManagerService;)Lcom/android/server/am/OnePlusAppBootManager;

    move-result-object v1

    if-ne p2, v3, :cond_4

    move v2, v3

    nop

    :cond_4
    invoke-virtual {v1, v2}, Lcom/android/server/am/OnePlusAppBootManager;->setAppBootState(Z)V

    .line 214
    const/4 v0, 0x2

    goto :goto_0

    .line 215
    :cond_5
    const/4 v1, 0x2

    if-ne p1, v1, :cond_7

    .line 216
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v4, "doze_mode_policy"

    if-ne p2, v3, :cond_6

    move v2, v3

    nop

    :cond_6
    invoke-static {v1, v4, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 217
    const/4 v0, 0x3

    .line 219
    :cond_7
    :goto_0
    return v0
.end method
