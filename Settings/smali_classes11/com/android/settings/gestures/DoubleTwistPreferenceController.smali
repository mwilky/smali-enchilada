.class public Lcom/android/settings/gestures/DoubleTwistPreferenceController;
.super Lcom/android/settings/gestures/GesturePreferenceController;
.source "DoubleTwistPreferenceController.java"


# static fields
.field private static final PREF_KEY_VIDEO:Ljava/lang/String; = "gesture_double_twist_video"


# instance fields
.field private final OFF:I

.field private final ON:I

.field private final mDoubleTwistPrefKey:Ljava/lang/String;

.field private final mUserManager:Landroid/os/UserManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/android/settings/gestures/GesturePreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    const/4 v0, 0x1

    iput v0, p0, Lcom/android/settings/gestures/DoubleTwistPreferenceController;->ON:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/settings/gestures/DoubleTwistPreferenceController;->OFF:I

    iput-object p2, p0, Lcom/android/settings/gestures/DoubleTwistPreferenceController;->mDoubleTwistPrefKey:Ljava/lang/String;

    const-string v0, "user"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    iput-object v0, p0, Lcom/android/settings/gestures/DoubleTwistPreferenceController;->mUserManager:Landroid/os/UserManager;

    return-void
.end method

.method public static getManagedProfileId(Landroid/os/UserManager;)I
    .locals 1
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    invoke-static {p0, v0}, Lcom/android/settings/Utils;->getManagedProfileId(Landroid/os/UserManager;I)I

    move-result v0

    return v0
.end method

.method public static isGestureAvailable(Landroid/content/Context;)Z
    .locals 7

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f1206bc

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f1206bd

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    const-string v3, "sensor"

    invoke-virtual {p0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/SensorManager;

    const/4 v4, -0x1

    invoke-virtual {v3, v4}, Landroid/hardware/SensorManager;->getSensorList(I)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/hardware/Sensor;

    invoke-virtual {v5}, Landroid/hardware/Sensor;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-virtual {v5}, Landroid/hardware/Sensor;->getVendor()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/4 v4, 0x1

    return v4

    :cond_0
    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    return v3
.end method

.method public static isSuggestionComplete(Landroid/content/Context;Landroid/content/SharedPreferences;)Z
    .locals 2

    invoke-static {p0}, Lcom/android/settings/gestures/DoubleTwistPreferenceController;->isGestureAvailable(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    const-string v0, "pref_double_twist_suggestion_complete"

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    goto :goto_1

    :cond_1
    :goto_0
    const/4 v1, 0x1

    :goto_1
    return v1
.end method

.method public static setDoubleTwistPreference(Landroid/content/Context;Landroid/os/UserManager;I)V
    .locals 3

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "camera_double_twist_to_flip_enabled"

    invoke-static {v0, v1, p2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    invoke-static {p1}, Lcom/android/settings/gestures/DoubleTwistPreferenceController;->getManagedProfileId(Landroid/os/UserManager;)I

    move-result v0

    const/16 v1, -0x2710

    if-eq v0, v1, :cond_0

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "camera_double_twist_to_flip_enabled"

    invoke-static {v1, v2, p2, v0}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    :cond_0
    return-void
.end method


# virtual methods
.method public getAvailabilityStatus()I
    .locals 1

    iget-object v0, p0, Lcom/android/settings/gestures/DoubleTwistPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settings/gestures/DoubleTwistPreferenceController;->isGestureAvailable(Landroid/content/Context;)Z

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

    iget-object v0, p0, Lcom/android/settings/gestures/DoubleTwistPreferenceController;->mDoubleTwistPrefKey:Ljava/lang/String;

    return-object v0
.end method

.method protected getVideoPrefKey()Ljava/lang/String;
    .locals 1

    const-string v0, "gesture_double_twist_video"

    return-object v0
.end method

.method public isChecked()Z
    .locals 3

    iget-object v0, p0, Lcom/android/settings/gestures/DoubleTwistPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "camera_double_twist_to_flip_enabled"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    return v2
.end method

.method public isSliceable()Z
    .locals 2

    invoke-virtual {p0}, Lcom/android/settings/gestures/DoubleTwistPreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v0

    const-string v1, "gesture_double_twist"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method

.method public setChecked(Z)Z
    .locals 2

    iget-object v0, p0, Lcom/android/settings/gestures/DoubleTwistPreferenceController;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/settings/gestures/DoubleTwistPreferenceController;->mUserManager:Landroid/os/UserManager;

    invoke-static {v0, v1, p1}, Lcom/android/settings/gestures/DoubleTwistPreferenceController;->setDoubleTwistPreference(Landroid/content/Context;Landroid/os/UserManager;I)V

    const/4 v0, 0x1

    return v0
.end method
