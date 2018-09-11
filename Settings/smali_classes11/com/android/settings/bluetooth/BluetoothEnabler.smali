.class public final Lcom/android/settings/bluetooth/BluetoothEnabler;
.super Ljava/lang/Object;
.source "BluetoothEnabler.java"

# interfaces
.implements Lcom/android/settings/widget/SwitchWidgetController$OnSwitchChangeListener;


# static fields
.field private static final EVENT_DATA_IS_BT_ON:Ljava/lang/String; = "is_bluetooth_on"

.field private static final EVENT_UPDATE_INDEX:I


# instance fields
.field private mCallback:Lcom/android/settings/widget/SwitchWidgetController$OnSwitchChangeListener;

.field private mContext:Landroid/content/Context;

.field private final mIntentFilter:Landroid/content/IntentFilter;

.field private final mLocalAdapter:Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;

.field private final mMetricsEvent:I

.field private final mMetricsFeatureProvider:Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private final mRestrictionUtils:Lcom/android/settings/bluetooth/RestrictionUtils;

.field private final mSwitchController:Lcom/android/settings/widget/SwitchWidgetController;

.field private mValidListener:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/settings/widget/SwitchWidgetController;Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;Lcom/android/settingslib/bluetooth/LocalBluetoothManager;I)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "switchController"    # Lcom/android/settings/widget/SwitchWidgetController;
    .param p3, "metricsFeatureProvider"    # Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;
    .param p4, "manager"    # Lcom/android/settingslib/bluetooth/LocalBluetoothManager;
    .param p5, "metricsEvent"    # I

    .line 69
    new-instance v6, Lcom/android/settings/bluetooth/RestrictionUtils;

    invoke-direct {v6}, Lcom/android/settings/bluetooth/RestrictionUtils;-><init>()V

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v6}, Lcom/android/settings/bluetooth/BluetoothEnabler;-><init>(Landroid/content/Context;Lcom/android/settings/widget/SwitchWidgetController;Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;Lcom/android/settingslib/bluetooth/LocalBluetoothManager;ILcom/android/settings/bluetooth/RestrictionUtils;)V

    .line 71
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/settings/widget/SwitchWidgetController;Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;Lcom/android/settingslib/bluetooth/LocalBluetoothManager;ILcom/android/settings/bluetooth/RestrictionUtils;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "switchController"    # Lcom/android/settings/widget/SwitchWidgetController;
    .param p3, "metricsFeatureProvider"    # Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;
    .param p4, "manager"    # Lcom/android/settingslib/bluetooth/LocalBluetoothManager;
    .param p5, "metricsEvent"    # I
    .param p6, "restrictionUtils"    # Lcom/android/settings/bluetooth/RestrictionUtils;

    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    new-instance v0, Lcom/android/settings/bluetooth/BluetoothEnabler$1;

    invoke-direct {v0, p0}, Lcom/android/settings/bluetooth/BluetoothEnabler$1;-><init>(Lcom/android/settings/bluetooth/BluetoothEnabler;)V

    iput-object v0, p0, Lcom/android/settings/bluetooth/BluetoothEnabler;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 76
    iput-object p1, p0, Lcom/android/settings/bluetooth/BluetoothEnabler;->mContext:Landroid/content/Context;

    .line 77
    iput-object p3, p0, Lcom/android/settings/bluetooth/BluetoothEnabler;->mMetricsFeatureProvider:Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;

    .line 78
    iput-object p2, p0, Lcom/android/settings/bluetooth/BluetoothEnabler;->mSwitchController:Lcom/android/settings/widget/SwitchWidgetController;

    .line 79
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothEnabler;->mSwitchController:Lcom/android/settings/widget/SwitchWidgetController;

    invoke-virtual {v0, p0}, Lcom/android/settings/widget/SwitchWidgetController;->setListener(Lcom/android/settings/widget/SwitchWidgetController$OnSwitchChangeListener;)V

    .line 80
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/bluetooth/BluetoothEnabler;->mValidListener:Z

    .line 81
    iput p5, p0, Lcom/android/settings/bluetooth/BluetoothEnabler;->mMetricsEvent:I

    .line 83
    if-nez p4, :cond_0

    .line 85
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/settings/bluetooth/BluetoothEnabler;->mLocalAdapter:Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;

    .line 86
    iget-object v1, p0, Lcom/android/settings/bluetooth/BluetoothEnabler;->mSwitchController:Lcom/android/settings/widget/SwitchWidgetController;

    invoke-virtual {v1, v0}, Lcom/android/settings/widget/SwitchWidgetController;->setEnabled(Z)V

    goto :goto_0

    .line 88
    :cond_0
    invoke-virtual {p4}, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->getBluetoothAdapter()Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/bluetooth/BluetoothEnabler;->mLocalAdapter:Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;

    .line 90
    :goto_0
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/settings/bluetooth/BluetoothEnabler;->mIntentFilter:Landroid/content/IntentFilter;

    .line 91
    iput-object p6, p0, Lcom/android/settings/bluetooth/BluetoothEnabler;->mRestrictionUtils:Lcom/android/settings/bluetooth/RestrictionUtils;

    .line 92
    return-void
.end method

.method public static getEnforcedAdmin(Lcom/android/settings/bluetooth/RestrictionUtils;Landroid/content/Context;)Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;
    .locals 2
    .param p0, "mRestrictionUtils"    # Lcom/android/settings/bluetooth/RestrictionUtils;
    .param p1, "mContext"    # Landroid/content/Context;

    .line 235
    const-string v0, "no_bluetooth"

    invoke-virtual {p0, p1, v0}, Lcom/android/settings/bluetooth/RestrictionUtils;->checkIfRestrictionEnforced(Landroid/content/Context;Ljava/lang/String;)Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    move-result-object v0

    .line 237
    .local v0, "admin":Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;
    if-nez v0, :cond_0

    .line 238
    const-string v1, "no_config_bluetooth"

    invoke-virtual {p0, p1, v1}, Lcom/android/settings/bluetooth/RestrictionUtils;->checkIfRestrictionEnforced(Landroid/content/Context;Ljava/lang/String;)Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    move-result-object v0

    .line 241
    :cond_0
    return-object v0
.end method

.method private setChecked(Z)V
    .locals 1
    .param p1, "isChecked"    # Z

    .line 158
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothEnabler;->mSwitchController:Lcom/android/settings/widget/SwitchWidgetController;

    invoke-virtual {v0}, Lcom/android/settings/widget/SwitchWidgetController;->isChecked()Z

    move-result v0

    if-eq p1, v0, :cond_1

    .line 161
    iget-boolean v0, p0, Lcom/android/settings/bluetooth/BluetoothEnabler;->mValidListener:Z

    if-eqz v0, :cond_0

    .line 162
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothEnabler;->mSwitchController:Lcom/android/settings/widget/SwitchWidgetController;

    invoke-virtual {v0}, Lcom/android/settings/widget/SwitchWidgetController;->stopListening()V

    .line 164
    :cond_0
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothEnabler;->mSwitchController:Lcom/android/settings/widget/SwitchWidgetController;

    invoke-virtual {v0, p1}, Lcom/android/settings/widget/SwitchWidgetController;->setChecked(Z)V

    .line 165
    iget-boolean v0, p0, Lcom/android/settings/bluetooth/BluetoothEnabler;->mValidListener:Z

    if-eqz v0, :cond_1

    .line 166
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothEnabler;->mSwitchController:Lcom/android/settings/widget/SwitchWidgetController;

    invoke-virtual {v0}, Lcom/android/settings/widget/SwitchWidgetController;->startListening()V

    .line 169
    :cond_1
    return-void
.end method

.method private triggerParentPreferenceCallback(Z)V
    .locals 1
    .param p1, "isChecked"    # Z

    .line 247
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothEnabler;->mCallback:Lcom/android/settings/widget/SwitchWidgetController$OnSwitchChangeListener;

    if-eqz v0, :cond_0

    .line 248
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothEnabler;->mCallback:Lcom/android/settings/widget/SwitchWidgetController$OnSwitchChangeListener;

    invoke-interface {v0, p1}, Lcom/android/settings/widget/SwitchWidgetController$OnSwitchChangeListener;->onSwitchToggled(Z)Z

    .line 250
    :cond_0
    return-void
.end method


# virtual methods
.method handleStateChanged(I)V
    .locals 3
    .param p1, "state"    # I

    .line 136
    const/4 v0, 0x0

    const/4 v1, 0x1

    packed-switch p1, :pswitch_data_0

    .line 152
    iget-object v2, p0, Lcom/android/settings/bluetooth/BluetoothEnabler;->mSwitchController:Lcom/android/settings/widget/SwitchWidgetController;

    invoke-virtual {v2, v1}, Lcom/android/settings/widget/SwitchWidgetController;->setEnabled(Z)V

    .line 153
    invoke-direct {p0, v0}, Lcom/android/settings/bluetooth/BluetoothEnabler;->setChecked(Z)V

    goto :goto_0

    .line 145
    :pswitch_0
    iget-object v1, p0, Lcom/android/settings/bluetooth/BluetoothEnabler;->mSwitchController:Lcom/android/settings/widget/SwitchWidgetController;

    invoke-virtual {v1, v0}, Lcom/android/settings/widget/SwitchWidgetController;->setEnabled(Z)V

    .line 146
    goto :goto_0

    .line 141
    :pswitch_1
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothEnabler;->mSwitchController:Lcom/android/settings/widget/SwitchWidgetController;

    invoke-virtual {v0, v1}, Lcom/android/settings/widget/SwitchWidgetController;->setEnabled(Z)V

    .line 142
    invoke-direct {p0, v1}, Lcom/android/settings/bluetooth/BluetoothEnabler;->setChecked(Z)V

    .line 143
    goto :goto_0

    .line 138
    :pswitch_2
    iget-object v1, p0, Lcom/android/settings/bluetooth/BluetoothEnabler;->mSwitchController:Lcom/android/settings/widget/SwitchWidgetController;

    invoke-virtual {v1, v0}, Lcom/android/settings/widget/SwitchWidgetController;->setEnabled(Z)V

    .line 139
    goto :goto_0

    .line 148
    :pswitch_3
    iget-object v2, p0, Lcom/android/settings/bluetooth/BluetoothEnabler;->mSwitchController:Lcom/android/settings/widget/SwitchWidgetController;

    invoke-virtual {v2, v1}, Lcom/android/settings/widget/SwitchWidgetController;->setEnabled(Z)V

    .line 149
    invoke-direct {p0, v0}, Lcom/android/settings/bluetooth/BluetoothEnabler;->setChecked(Z)V

    .line 150
    nop

    .line 155
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0xa
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method maybeEnforceRestrictions()Z
    .locals 3
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 224
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothEnabler;->mRestrictionUtils:Lcom/android/settings/bluetooth/RestrictionUtils;

    iget-object v1, p0, Lcom/android/settings/bluetooth/BluetoothEnabler;->mContext:Landroid/content/Context;

    invoke-static {v0, v1}, Lcom/android/settings/bluetooth/BluetoothEnabler;->getEnforcedAdmin(Lcom/android/settings/bluetooth/RestrictionUtils;Landroid/content/Context;)Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    move-result-object v0

    .line 225
    .local v0, "admin":Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;
    iget-object v1, p0, Lcom/android/settings/bluetooth/BluetoothEnabler;->mSwitchController:Lcom/android/settings/widget/SwitchWidgetController;

    invoke-virtual {v1, v0}, Lcom/android/settings/widget/SwitchWidgetController;->setDisabledByAdmin(Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;)V

    .line 226
    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 227
    iget-object v2, p0, Lcom/android/settings/bluetooth/BluetoothEnabler;->mSwitchController:Lcom/android/settings/widget/SwitchWidgetController;

    invoke-virtual {v2, v1}, Lcom/android/settings/widget/SwitchWidgetController;->setChecked(Z)V

    .line 228
    iget-object v2, p0, Lcom/android/settings/bluetooth/BluetoothEnabler;->mSwitchController:Lcom/android/settings/widget/SwitchWidgetController;

    invoke-virtual {v2, v1}, Lcom/android/settings/widget/SwitchWidgetController;->setEnabled(Z)V

    .line 230
    :cond_0
    if-eqz v0, :cond_1

    const/4 v1, 0x1

    nop

    :cond_1
    return v1
.end method

.method public onSwitchToggled(Z)Z
    .locals 5
    .param p1, "isChecked"    # Z

    .line 173
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothEnabler;->maybeEnforceRestrictions()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 174
    invoke-direct {p0, p1}, Lcom/android/settings/bluetooth/BluetoothEnabler;->triggerParentPreferenceCallback(Z)V

    .line 175
    return v1

    .line 179
    :cond_0
    const/4 v0, 0x0

    if-eqz p1, :cond_1

    iget-object v2, p0, Lcom/android/settings/bluetooth/BluetoothEnabler;->mContext:Landroid/content/Context;

    const-string v3, "bluetooth"

    .line 180
    invoke-static {v2, v3}, Lcom/android/settingslib/WirelessUtils;->isRadioAllowed(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 181
    iget-object v1, p0, Lcom/android/settings/bluetooth/BluetoothEnabler;->mContext:Landroid/content/Context;

    const v2, 0x7f12142c

    invoke-static {v1, v2, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 183
    iget-object v1, p0, Lcom/android/settings/bluetooth/BluetoothEnabler;->mSwitchController:Lcom/android/settings/widget/SwitchWidgetController;

    invoke-virtual {v1, v0}, Lcom/android/settings/widget/SwitchWidgetController;->setChecked(Z)V

    .line 184
    invoke-direct {p0, v0}, Lcom/android/settings/bluetooth/BluetoothEnabler;->triggerParentPreferenceCallback(Z)V

    .line 185
    return v0

    .line 188
    :cond_1
    iget-object v2, p0, Lcom/android/settings/bluetooth/BluetoothEnabler;->mMetricsFeatureProvider:Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;

    iget-object v3, p0, Lcom/android/settings/bluetooth/BluetoothEnabler;->mContext:Landroid/content/Context;

    iget v4, p0, Lcom/android/settings/bluetooth/BluetoothEnabler;->mMetricsEvent:I

    invoke-virtual {v2, v3, v4, p1}, Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;->action(Landroid/content/Context;IZ)V

    .line 190
    iget-object v2, p0, Lcom/android/settings/bluetooth/BluetoothEnabler;->mLocalAdapter:Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;

    if-eqz v2, :cond_2

    .line 191
    iget-object v2, p0, Lcom/android/settings/bluetooth/BluetoothEnabler;->mLocalAdapter:Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {v2, p1}, Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;->setBluetoothEnabled(Z)Z

    move-result v2

    .line 195
    .local v2, "status":Z
    if-eqz p1, :cond_2

    if-nez v2, :cond_2

    .line 196
    iget-object v3, p0, Lcom/android/settings/bluetooth/BluetoothEnabler;->mSwitchController:Lcom/android/settings/widget/SwitchWidgetController;

    invoke-virtual {v3, v0}, Lcom/android/settings/widget/SwitchWidgetController;->setChecked(Z)V

    .line 197
    iget-object v3, p0, Lcom/android/settings/bluetooth/BluetoothEnabler;->mSwitchController:Lcom/android/settings/widget/SwitchWidgetController;

    invoke-virtual {v3, v1}, Lcom/android/settings/widget/SwitchWidgetController;->setEnabled(Z)V

    .line 198
    iget-object v1, p0, Lcom/android/settings/bluetooth/BluetoothEnabler;->mSwitchController:Lcom/android/settings/widget/SwitchWidgetController;

    invoke-virtual {v1, v0}, Lcom/android/settings/widget/SwitchWidgetController;->updateTitle(Z)V

    .line 199
    invoke-direct {p0, v0}, Lcom/android/settings/bluetooth/BluetoothEnabler;->triggerParentPreferenceCallback(Z)V

    .line 200
    return v0

    .line 203
    .end local v2    # "status":Z
    :cond_2
    iget-object v2, p0, Lcom/android/settings/bluetooth/BluetoothEnabler;->mSwitchController:Lcom/android/settings/widget/SwitchWidgetController;

    invoke-virtual {v2, v0}, Lcom/android/settings/widget/SwitchWidgetController;->setEnabled(Z)V

    .line 204
    invoke-direct {p0, p1}, Lcom/android/settings/bluetooth/BluetoothEnabler;->triggerParentPreferenceCallback(Z)V

    .line 205
    return v1
.end method

.method public pause()V
    .locals 2

    .line 125
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothEnabler;->mLocalAdapter:Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;

    if-nez v0, :cond_0

    .line 126
    return-void

    .line 128
    :cond_0
    iget-boolean v0, p0, Lcom/android/settings/bluetooth/BluetoothEnabler;->mValidListener:Z

    if-eqz v0, :cond_1

    .line 129
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothEnabler;->mSwitchController:Lcom/android/settings/widget/SwitchWidgetController;

    invoke-virtual {v0}, Lcom/android/settings/widget/SwitchWidgetController;->stopListening()V

    .line 130
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothEnabler;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/settings/bluetooth/BluetoothEnabler;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 131
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/bluetooth/BluetoothEnabler;->mValidListener:Z

    .line 133
    :cond_1
    return-void
.end method

.method public resume(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .line 103
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothEnabler;->mContext:Landroid/content/Context;

    if-eq v0, p1, :cond_0

    .line 104
    iput-object p1, p0, Lcom/android/settings/bluetooth/BluetoothEnabler;->mContext:Landroid/content/Context;

    .line 107
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothEnabler;->maybeEnforceRestrictions()Z

    move-result v0

    .line 109
    .local v0, "restricted":Z
    iget-object v1, p0, Lcom/android/settings/bluetooth/BluetoothEnabler;->mLocalAdapter:Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;

    if-nez v1, :cond_1

    .line 110
    iget-object v1, p0, Lcom/android/settings/bluetooth/BluetoothEnabler;->mSwitchController:Lcom/android/settings/widget/SwitchWidgetController;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/settings/widget/SwitchWidgetController;->setEnabled(Z)V

    .line 111
    return-void

    .line 115
    :cond_1
    if-nez v0, :cond_2

    .line 116
    iget-object v1, p0, Lcom/android/settings/bluetooth/BluetoothEnabler;->mLocalAdapter:Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {v1}, Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;->getBluetoothState()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/settings/bluetooth/BluetoothEnabler;->handleStateChanged(I)V

    .line 119
    :cond_2
    iget-object v1, p0, Lcom/android/settings/bluetooth/BluetoothEnabler;->mSwitchController:Lcom/android/settings/widget/SwitchWidgetController;

    invoke-virtual {v1}, Lcom/android/settings/widget/SwitchWidgetController;->startListening()V

    .line 120
    iget-object v1, p0, Lcom/android/settings/bluetooth/BluetoothEnabler;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/settings/bluetooth/BluetoothEnabler;->mReceiver:Landroid/content/BroadcastReceiver;

    iget-object v3, p0, Lcom/android/settings/bluetooth/BluetoothEnabler;->mIntentFilter:Landroid/content/IntentFilter;

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 121
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/settings/bluetooth/BluetoothEnabler;->mValidListener:Z

    .line 122
    return-void
.end method

.method public setToggleCallback(Lcom/android/settings/widget/SwitchWidgetController$OnSwitchChangeListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/android/settings/widget/SwitchWidgetController$OnSwitchChangeListener;

    .line 214
    iput-object p1, p0, Lcom/android/settings/bluetooth/BluetoothEnabler;->mCallback:Lcom/android/settings/widget/SwitchWidgetController$OnSwitchChangeListener;

    .line 215
    return-void
.end method

.method public setupSwitchController()V
    .locals 1

    .line 95
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothEnabler;->mSwitchController:Lcom/android/settings/widget/SwitchWidgetController;

    invoke-virtual {v0}, Lcom/android/settings/widget/SwitchWidgetController;->setupView()V

    .line 96
    return-void
.end method

.method public teardownSwitchController()V
    .locals 1

    .line 99
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothEnabler;->mSwitchController:Lcom/android/settings/widget/SwitchWidgetController;

    invoke-virtual {v0}, Lcom/android/settings/widget/SwitchWidgetController;->teardownView()V

    .line 100
    return-void
.end method
