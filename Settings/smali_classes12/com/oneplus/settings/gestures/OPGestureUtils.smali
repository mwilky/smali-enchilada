.class public Lcom/oneplus/settings/gestures/OPGestureUtils;
.super Ljava/lang/Object;
.source "OPGestureUtils.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "OPGestureUtils"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static get(II)I
    .locals 1
    .param p0, "num"    # I
    .param p1, "index"    # I

    .line 265
    const/4 v0, 0x1

    shl-int/2addr v0, p1

    and-int/2addr v0, p0

    shr-int/2addr v0, p1

    return v0
.end method

.method public static getAppNameByPackageName(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "mPackageName"    # Ljava/lang/String;

    .line 232
    const/4 v0, 0x0

    .line 233
    .local v0, "newAppInfo":Landroid/content/pm/ResolveInfo;
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 234
    .local v1, "tempPackageManager":Landroid/content/pm/PackageManager;
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.MAIN"

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 235
    .local v2, "mainIntent":Landroid/content/Intent;
    const-string v3, "android.intent.category.LAUNCHER"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 236
    invoke-virtual {v2, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 237
    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v4

    .line 238
    .local v4, "resolveInfo":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    if-lez v5, :cond_0

    .line 239
    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Landroid/content/pm/ResolveInfo;

    .line 240
    invoke-virtual {v0, v1}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    return-object v3

    .line 242
    :cond_0
    const v3, 0x7f120ae4

    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method public static getGesturePacakgeUid(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "key"    # Ljava/lang/String;

    .line 78
    nop

    .line 79
    const v0, 0x7f120ae4

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 81
    .local v0, "noneSummary":Ljava/lang/String;
    const-string v1, "oem_acc_blackscreen_gesture"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 82
    move-object v1, p1

    .local v1, "realKey":Ljava/lang/String;
    goto :goto_0

    .line 84
    .end local v1    # "realKey":Ljava/lang/String;
    :cond_0
    invoke-static {p1}, Lcom/oneplus/settings/gestures/OPGestureUtils;->getGestureTypebyGestureKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 86
    .restart local v1    # "realKey":Ljava/lang/String;
    :goto_0
    nop

    .line 87
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 86
    invoke-static {v2, v1}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 88
    .local v2, "actionSummary":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 89
    const-string v3, ""

    return-object v3

    .line 91
    :cond_1
    const-string v3, ";"

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 92
    .local v3, "actionString":[Ljava/lang/String;
    const/4 v4, 0x0

    aget-object v4, v3, v4

    .line 93
    .local v4, "actionPackageName":Ljava/lang/String;
    const-string v5, "OpenApp:"

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 94
    const-string v5, ""

    .line 95
    .local v5, "uid":Ljava/lang/String;
    array-length v6, v3

    const/4 v7, 0x1

    if-le v6, v7, :cond_2

    .line 96
    aget-object v5, v3, v7

    .line 98
    :cond_2
    return-object v5

    .line 99
    .end local v5    # "uid":Ljava/lang/String;
    :cond_3
    const-string v5, "OpenShortcut:"

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 100
    const-string v5, "OpenShortcut:"

    .line 101
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    .line 102
    const-string v5, ""

    .line 103
    .restart local v5    # "uid":Ljava/lang/String;
    array-length v6, v3

    const/4 v7, 0x2

    if-le v6, v7, :cond_4

    .line 104
    aget-object v5, v3, v7

    .line 106
    :cond_4
    return-object v5

    .line 108
    .end local v5    # "uid":Ljava/lang/String;
    :cond_5
    const-string v5, ""

    return-object v5
.end method

.method public static getGesturePackageName(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "key"    # Ljava/lang/String;

    .line 43
    nop

    .line 44
    const v0, 0x7f120ae4

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 46
    .local v1, "noneSummary":Ljava/lang/String;
    const-string v2, "oem_acc_blackscreen_gesture"

    invoke-virtual {p1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 47
    move-object v2, p1

    .local v2, "realKey":Ljava/lang/String;
    goto :goto_0

    .line 49
    .end local v2    # "realKey":Ljava/lang/String;
    :cond_0
    invoke-static {p1}, Lcom/oneplus/settings/gestures/OPGestureUtils;->getGestureTypebyGestureKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 51
    .restart local v2    # "realKey":Ljava/lang/String;
    :goto_0
    nop

    .line 52
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 51
    invoke-static {v3, v2}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 53
    .local v3, "actionSummary":Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 54
    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 56
    :cond_1
    const-string v4, ";"

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 57
    .local v4, "actionString":[Ljava/lang/String;
    const/4 v5, 0x0

    aget-object v5, v4, v5

    .line 58
    .local v5, "actionPackageName":Ljava/lang/String;
    const-string v6, "OpenApp:"

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 59
    const-string v0, "OpenApp:"

    .line 60
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {v5, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 61
    .end local v5    # "actionPackageName":Ljava/lang/String;
    .local v0, "actionPackageName":Ljava/lang/String;
    return-object v0

    .line 62
    .end local v0    # "actionPackageName":Ljava/lang/String;
    .restart local v5    # "actionPackageName":Ljava/lang/String;
    :cond_2
    const-string v6, "OpenShortcut:"

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 63
    const-string v6, "OpenShortcut:"

    .line 64
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    .line 65
    const/4 v6, 0x1

    aget-object v6, v4, v6

    .line 66
    .local v6, "actionShortcutId":Ljava/lang/String;
    invoke-static {p0, v5, v6}, Lcom/oneplus/settings/gestures/OPGestureUtils;->hasShortCutsId(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 67
    return-object v5

    .line 69
    :cond_3
    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 72
    .end local v6    # "actionShortcutId":Ljava/lang/String;
    :cond_4
    const-string v0, ""

    return-object v0
.end method

.method public static getGestureSummarybyGestureKey(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "key"    # Ljava/lang/String;

    .line 114
    nop

    .line 115
    const v0, 0x7f120ae4

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 117
    .local v1, "noneSummary":Ljava/lang/String;
    const-string v2, "oem_acc_blackscreen_gesture"

    invoke-virtual {p1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 118
    move-object v2, p1

    .local v2, "realKey":Ljava/lang/String;
    goto :goto_0

    .line 120
    .end local v2    # "realKey":Ljava/lang/String;
    :cond_0
    invoke-static {p1}, Lcom/oneplus/settings/gestures/OPGestureUtils;->getGestureTypebyGestureKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 122
    .restart local v2    # "realKey":Ljava/lang/String;
    :goto_0
    nop

    .line 123
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 122
    invoke-static {v3, v2}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 124
    .local v3, "actionSummary":Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 125
    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 126
    :cond_1
    const-string v4, "OpenCamera"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 127
    const v0, 0x7f120b50

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 128
    :cond_2
    const-string v4, "FrontCamera"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 129
    const v0, 0x7f120b52

    .line 130
    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 129
    return-object v0

    .line 131
    :cond_3
    const-string v4, "TakeVideo"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 132
    const v0, 0x7f120b54

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 133
    :cond_4
    const-string v4, "OpenTorch"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 134
    const v0, 0x7f120b51

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 135
    :cond_5
    const-string v4, "OpenShelf"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 136
    const v0, 0x7f1206d5

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 138
    :cond_6
    const-string v4, ";"

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 139
    .local v4, "actionString":[Ljava/lang/String;
    const/4 v5, 0x0

    aget-object v5, v4, v5

    .line 140
    .local v5, "actionPackageName":Ljava/lang/String;
    const-string v6, "OpenApp:"

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 141
    const-string v0, "OpenApp:"

    .line 142
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {v5, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    goto :goto_1

    .line 143
    :cond_7
    const-string v6, "OpenShortcut:"

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_9

    .line 144
    const-string v6, "OpenShortcut:"

    .line 145
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    .line 146
    const/4 v6, 0x1

    aget-object v6, v4, v6

    .line 147
    .local v6, "actionShortcutId":Ljava/lang/String;
    invoke-static {p0, v5, v6}, Lcom/oneplus/settings/gestures/OPGestureUtils;->hasShortCutsId(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_8

    .line 148
    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 150
    :cond_8
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0, v5}, Lcom/oneplus/settings/gestures/OPGestureUtils;->getAppNameByPackageName(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "/"

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0, v5, v6}, Lcom/oneplus/settings/gestures/OPGestureUtils;->getShortCutsNameByID(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 153
    .end local v6    # "actionShortcutId":Ljava/lang/String;
    :cond_9
    :goto_1
    invoke-static {p0, v5}, Lcom/oneplus/settings/gestures/OPGestureUtils;->getAppNameByPackageName(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getGestureTypebyGestureKey(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "key"    # Ljava/lang/String;

    .line 26
    const-string v0, ""

    .line 27
    .local v0, "gestureType":Ljava/lang/String;
    const-string v1, "oneplus_draw_o_start_app"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 28
    const-string v0, "oem_acc_blackscreen_gesture_o"

    goto :goto_0

    .line 29
    :cond_0
    const-string v1, "oneplus_draw_v_start_app"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 30
    const-string v0, "oem_acc_blackscreen_gesture_v"

    goto :goto_0

    .line 31
    :cond_1
    const-string v1, "oneplus_draw_s_start_app"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 32
    const-string v0, "oem_acc_blackscreen_gesture_s"

    goto :goto_0

    .line 33
    :cond_2
    const-string v1, "oneplus_draw_m_start_app"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 34
    const-string v0, "oem_acc_blackscreen_gesture_m"

    goto :goto_0

    .line 35
    :cond_3
    const-string v1, "oneplus_draw_w_start_app"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 36
    const-string v0, "oem_acc_blackscreen_gesture_w"

    .line 38
    :cond_4
    :goto_0
    return-object v0
.end method

.method public static getIndexByGestureValueKey(Ljava/lang/String;)I
    .locals 2
    .param p0, "key"    # Ljava/lang/String;

    .line 249
    const/4 v0, 0x0

    .line 250
    .local v0, "gestureIndex":I
    const-string v1, "oem_acc_blackscreen_gesture_o"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 251
    const/4 v0, 0x6

    goto :goto_0

    .line 252
    :cond_0
    const-string v1, "oem_acc_blackscreen_gesture_v"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 253
    const/4 v0, 0x0

    goto :goto_0

    .line 254
    :cond_1
    const-string v1, "oem_acc_blackscreen_gesture_s"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 255
    const/16 v0, 0x8

    goto :goto_0

    .line 256
    :cond_2
    const-string v1, "oem_acc_blackscreen_gesture_m"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 257
    const/16 v0, 0x9

    goto :goto_0

    .line 258
    :cond_3
    const-string v1, "oem_acc_blackscreen_gesture_w"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 259
    const/16 v0, 0xa

    .line 261
    :cond_4
    :goto_0
    return v0
.end method

.method public static getShortCutIdByGestureKey(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "key"    # Ljava/lang/String;

    .line 188
    nop

    .line 189
    const v0, 0x7f120ae4

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 191
    .local v1, "noneSummary":Ljava/lang/String;
    const-string v2, "oem_acc_blackscreen_gesture"

    invoke-virtual {p1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 192
    move-object v2, p1

    .local v2, "realKey":Ljava/lang/String;
    goto :goto_0

    .line 194
    .end local v2    # "realKey":Ljava/lang/String;
    :cond_0
    invoke-static {p1}, Lcom/oneplus/settings/gestures/OPGestureUtils;->getGestureTypebyGestureKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 196
    .restart local v2    # "realKey":Ljava/lang/String;
    :goto_0
    nop

    .line 197
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 196
    invoke-static {v3, v2}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 198
    .local v3, "actionSummary":Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 199
    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 201
    :cond_1
    const-string v0, ";"

    invoke-virtual {v3, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 202
    .local v0, "actionString":[Ljava/lang/String;
    const/4 v4, 0x0

    aget-object v4, v0, v4

    .line 203
    .local v4, "actionPackageName":Ljava/lang/String;
    const-string v5, "OpenShortcut:"

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 204
    const/4 v5, 0x1

    aget-object v5, v0, v5

    .line 205
    .local v5, "actionShortcutId":Ljava/lang/String;
    return-object v5

    .line 207
    .end local v5    # "actionShortcutId":Ljava/lang/String;
    :cond_2
    const-string v5, ""

    return-object v5
.end method

.method public static getShortCutNameByGestureKey(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "key"    # Ljava/lang/String;

    .line 159
    nop

    .line 160
    const v0, 0x7f120ae4

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 162
    .local v1, "noneSummary":Ljava/lang/String;
    const-string v2, "oem_acc_blackscreen_gesture"

    invoke-virtual {p1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 163
    move-object v2, p1

    .local v2, "realKey":Ljava/lang/String;
    goto :goto_0

    .line 165
    .end local v2    # "realKey":Ljava/lang/String;
    :cond_0
    invoke-static {p1}, Lcom/oneplus/settings/gestures/OPGestureUtils;->getGestureTypebyGestureKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 167
    .restart local v2    # "realKey":Ljava/lang/String;
    :goto_0
    nop

    .line 168
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 167
    invoke-static {v3, v2}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 169
    .local v3, "actionSummary":Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 170
    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 172
    :cond_1
    const-string v0, ";"

    invoke-virtual {v3, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 173
    .local v0, "actionString":[Ljava/lang/String;
    const/4 v4, 0x0

    aget-object v4, v0, v4

    .line 174
    .local v4, "actionPackageName":Ljava/lang/String;
    const-string v5, "OpenApp:"

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 175
    const-string v5, "OpenApp:"

    .line 176
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    .line 183
    invoke-static {p0, v4}, Lcom/oneplus/settings/gestures/OPGestureUtils;->getAppNameByPackageName(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    return-object v5

    .line 177
    :cond_2
    const-string v5, "OpenShortcut:"

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 178
    const/4 v5, 0x1

    aget-object v5, v0, v5

    .line 179
    .local v5, "actionShortcutId":Ljava/lang/String;
    return-object v5

    .line 181
    .end local v5    # "actionShortcutId":Ljava/lang/String;
    :cond_3
    const-string v5, ""

    return-object v5
.end method

.method public static getShortCutsNameByID(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "shortCutId"    # Ljava/lang/String;

    .line 454
    invoke-static {p0, p1}, Lcom/oneplus/settings/gestures/OPGestureUtils;->loadShortCuts(Landroid/content/Context;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 455
    .local v0, "shortcutInfo":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ShortcutInfo;>;"
    const-string v1, ""

    .line 456
    .local v1, "shortCutName":Ljava/lang/String;
    if-eqz v0, :cond_2

    .line 457
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ShortcutInfo;

    .line 458
    .local v3, "s":Landroid/content/pm/ShortcutInfo;
    invoke-virtual {v3}, Landroid/content/pm/ShortcutInfo;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 459
    invoke-virtual {v3}, Landroid/content/pm/ShortcutInfo;->getShortLabel()Ljava/lang/CharSequence;

    move-result-object v4

    .line 460
    .local v4, "label":Ljava/lang/CharSequence;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 461
    move-object v4, p2

    .line 463
    :cond_0
    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    .line 465
    .end local v3    # "s":Landroid/content/pm/ShortcutInfo;
    .end local v4    # "label":Ljava/lang/CharSequence;
    :cond_1
    goto :goto_0

    .line 467
    :cond_2
    return-object v1
.end method

.method public static hasShortCuts(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "packageName"    # Ljava/lang/String;

    .line 430
    invoke-static {p0, p1}, Lcom/oneplus/settings/gestures/OPGestureUtils;->loadShortCuts(Landroid/content/Context;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 431
    .local v0, "shortcutInfo":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ShortcutInfo;>;"
    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 432
    return v1

    .line 434
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_1

    const/4 v1, 0x1

    nop

    :cond_1
    return v1
.end method

.method public static hasShortCutsGesture(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "key"    # Ljava/lang/String;

    .line 213
    nop

    .line 214
    const v0, 0x7f120ae4

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 216
    .local v0, "noneSummary":Ljava/lang/String;
    const-string v1, "oem_acc_blackscreen_gesture"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 217
    move-object v1, p1

    .local v1, "realKey":Ljava/lang/String;
    goto :goto_0

    .line 219
    .end local v1    # "realKey":Ljava/lang/String;
    :cond_0
    invoke-static {p1}, Lcom/oneplus/settings/gestures/OPGestureUtils;->getGestureTypebyGestureKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 221
    .restart local v1    # "realKey":Ljava/lang/String;
    :goto_0
    nop

    .line 222
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 221
    invoke-static {v2, v1}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 223
    .local v2, "actionSummary":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    const-string v3, "OpenShortcut:"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 224
    const/4 v3, 0x1

    return v3

    .line 226
    :cond_1
    const/4 v3, 0x0

    return v3
.end method

.method public static hasShortCutsId(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "shortCutId"    # Ljava/lang/String;

    .line 438
    invoke-static {p0, p1}, Lcom/oneplus/settings/gestures/OPGestureUtils;->loadShortCuts(Landroid/content/Context;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 439
    .local v0, "shortcutInfo":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ShortcutInfo;>;"
    if-nez v0, :cond_0

    .line 440
    const/4 v1, 0x0

    return v1

    .line 442
    :cond_0
    const/4 v1, 0x0

    .line 443
    .local v1, "hasShortcutId":Z
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ShortcutInfo;

    .line 444
    .local v3, "s":Landroid/content/pm/ShortcutInfo;
    invoke-virtual {v3}, Landroid/content/pm/ShortcutInfo;->getId()Ljava/lang/String;

    move-result-object v4

    .line 445
    .local v4, "id":Ljava/lang/CharSequence;
    invoke-virtual {v4, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 446
    const/4 v1, 0x1

    .line 447
    goto :goto_1

    .line 449
    .end local v3    # "s":Landroid/content/pm/ShortcutInfo;
    .end local v4    # "id":Ljava/lang/CharSequence;
    :cond_1
    goto :goto_0

    .line 450
    :cond_2
    :goto_1
    return v1
.end method

.method public static loadShortCuts(Landroid/content/Context;Ljava/lang/String;)Ljava/util/List;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Landroid/content/pm/ShortcutInfo;",
            ">;"
        }
    .end annotation

    .line 409
    const-string v0, "launcherapps"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/LauncherApps;

    .line 415
    .local v0, "mLauncherApps":Landroid/content/pm/LauncherApps;
    new-instance v1, Landroid/content/pm/LauncherApps$ShortcutQuery;

    invoke-direct {v1}, Landroid/content/pm/LauncherApps$ShortcutQuery;-><init>()V

    .line 421
    .local v1, "mQuery":Landroid/content/pm/LauncherApps$ShortcutQuery;
    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/content/pm/LauncherApps$ShortcutQuery;->setQueryFlags(I)Landroid/content/pm/LauncherApps$ShortcutQuery;

    .line 422
    invoke-virtual {v1, p1}, Landroid/content/pm/LauncherApps$ShortcutQuery;->setPackage(Ljava/lang/String;)Landroid/content/pm/LauncherApps$ShortcutQuery;

    .line 425
    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/LauncherApps;->getShortcuts(Landroid/content/pm/LauncherApps$ShortcutQuery;Landroid/os/UserHandle;)Ljava/util/List;

    move-result-object v2

    .line 426
    .local v2, "shortcutInfo":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ShortcutInfo;>;"
    return-object v2
.end method

.method public static set0(Landroid/content/Context;I)I
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "index"    # I

    .line 342
    const/16 v0, 0xf

    if-eq p1, v0, :cond_0

    packed-switch p1, :pswitch_data_0

    .line 397
    const v0, 0xffff

    goto :goto_0

    .line 390
    :pswitch_0
    const v0, 0xf7ff

    .line 391
    .local v0, "mul":I
    goto :goto_0

    .line 386
    .end local v0    # "mul":I
    :pswitch_1
    const v0, 0xfbff

    .line 387
    .restart local v0    # "mul":I
    goto :goto_0

    .line 382
    .end local v0    # "mul":I
    :pswitch_2
    const v0, 0xfdff

    .line 383
    .restart local v0    # "mul":I
    goto :goto_0

    .line 378
    .end local v0    # "mul":I
    :pswitch_3
    const v0, 0xfeff

    .line 379
    .restart local v0    # "mul":I
    goto :goto_0

    .line 374
    .end local v0    # "mul":I
    :pswitch_4
    const v0, 0xff7f

    .line 375
    .restart local v0    # "mul":I
    goto :goto_0

    .line 370
    .end local v0    # "mul":I
    :pswitch_5
    const v0, 0xffbf

    .line 371
    .restart local v0    # "mul":I
    goto :goto_0

    .line 366
    .end local v0    # "mul":I
    :pswitch_6
    const v0, 0xffdf

    .line 367
    .restart local v0    # "mul":I
    goto :goto_0

    .line 362
    .end local v0    # "mul":I
    :pswitch_7
    const v0, 0xffef

    .line 363
    .restart local v0    # "mul":I
    goto :goto_0

    .line 358
    .end local v0    # "mul":I
    :pswitch_8
    const v0, 0xfff7

    .line 359
    .restart local v0    # "mul":I
    goto :goto_0

    .line 354
    .end local v0    # "mul":I
    :pswitch_9
    const v0, 0xfffb

    .line 355
    .restart local v0    # "mul":I
    goto :goto_0

    .line 350
    .end local v0    # "mul":I
    :pswitch_a
    const v0, 0xfffd

    .line 351
    .restart local v0    # "mul":I
    goto :goto_0

    .line 346
    .end local v0    # "mul":I
    :pswitch_b
    const v0, 0xfffe

    .line 347
    .restart local v0    # "mul":I
    goto :goto_0

    .line 394
    .end local v0    # "mul":I
    :cond_0
    const/16 v0, 0x7fff

    .line 395
    .restart local v0    # "mul":I
    nop

    .line 397
    :goto_0
    nop

    .line 400
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "oem_acc_blackscreen_gestrue_enable"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 403
    .local v1, "gestureValue":I
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "oem_acc_blackscreen_gestrue_enable"

    and-int v4, v1, v0

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 405
    and-int v2, v1, v0

    return v2

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static set1(Landroid/content/Context;I)I
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "index"    # I

    .line 271
    const/16 v0, 0xf

    const/4 v1, 0x0

    if-eq p1, v0, :cond_0

    packed-switch p1, :pswitch_data_0

    .line 326
    move v0, v1

    goto :goto_0

    .line 319
    :pswitch_0
    const/16 v0, 0x800

    .line 320
    .local v0, "mul":I
    goto :goto_0

    .line 315
    .end local v0    # "mul":I
    :pswitch_1
    const/16 v0, 0x400

    .line 316
    .restart local v0    # "mul":I
    goto :goto_0

    .line 311
    .end local v0    # "mul":I
    :pswitch_2
    const/16 v0, 0x200

    .line 312
    .restart local v0    # "mul":I
    goto :goto_0

    .line 307
    .end local v0    # "mul":I
    :pswitch_3
    const/16 v0, 0x100

    .line 308
    .restart local v0    # "mul":I
    goto :goto_0

    .line 303
    .end local v0    # "mul":I
    :pswitch_4
    const/16 v0, 0x80

    .line 304
    .restart local v0    # "mul":I
    goto :goto_0

    .line 299
    .end local v0    # "mul":I
    :pswitch_5
    const/16 v0, 0x40

    .line 300
    .restart local v0    # "mul":I
    goto :goto_0

    .line 295
    .end local v0    # "mul":I
    :pswitch_6
    const/16 v0, 0x20

    .line 296
    .restart local v0    # "mul":I
    goto :goto_0

    .line 291
    .end local v0    # "mul":I
    :pswitch_7
    const/16 v0, 0x10

    .line 292
    .restart local v0    # "mul":I
    goto :goto_0

    .line 287
    .end local v0    # "mul":I
    :pswitch_8
    const/16 v0, 0x8

    .line 288
    .restart local v0    # "mul":I
    goto :goto_0

    .line 283
    .end local v0    # "mul":I
    :pswitch_9
    const/4 v0, 0x4

    .line 284
    .restart local v0    # "mul":I
    goto :goto_0

    .line 279
    .end local v0    # "mul":I
    :pswitch_a
    const/4 v0, 0x2

    .line 280
    .restart local v0    # "mul":I
    goto :goto_0

    .line 275
    .end local v0    # "mul":I
    :pswitch_b
    const/4 v0, 0x1

    .line 276
    .restart local v0    # "mul":I
    goto :goto_0

    .line 323
    .end local v0    # "mul":I
    :cond_0
    const v0, 0x8000

    .line 324
    .restart local v0    # "mul":I
    nop

    .line 326
    :goto_0
    nop

    .line 329
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "oem_acc_blackscreen_gestrue_enable"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 332
    .local v1, "gestureValue":I
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "oem_acc_blackscreen_gestrue_enable"

    or-int v4, v1, v0

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 335
    or-int v2, v1, v0

    return v2

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
