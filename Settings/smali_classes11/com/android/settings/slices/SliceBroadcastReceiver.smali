.class public Lcom/android/settings/slices/SliceBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "SliceBroadcastReceiver.java"


# static fields
.field private static TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 54
    const-string v0, "SettSliceBroadcastRec"

    sput-object v0, Lcom/android/settings/slices/SliceBroadcastReceiver;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 52
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method private getPreferenceController(Landroid/content/Context;Ljava/lang/String;)Lcom/android/settings/core/BasePreferenceController;
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "key"    # Ljava/lang/String;

    .line 176
    new-instance v0, Lcom/android/settings/slices/SlicesDatabaseAccessor;

    invoke-direct {v0, p1}, Lcom/android/settings/slices/SlicesDatabaseAccessor;-><init>(Landroid/content/Context;)V

    .line 177
    .local v0, "accessor":Lcom/android/settings/slices/SlicesDatabaseAccessor;
    invoke-virtual {v0, p2}, Lcom/android/settings/slices/SlicesDatabaseAccessor;->getSliceDataFromKey(Ljava/lang/String;)Lcom/android/settings/slices/SliceData;

    move-result-object v1

    .line 178
    .local v1, "sliceData":Lcom/android/settings/slices/SliceData;
    invoke-static {p1, v1}, Lcom/android/settings/slices/SliceBuilderUtils;->getPreferenceController(Landroid/content/Context;Lcom/android/settings/slices/SliceData;)Lcom/android/settings/core/BasePreferenceController;

    move-result-object v2

    return-object v2
.end method

.method private handleSliderAction(Landroid/content/Context;Ljava/lang/String;IZ)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "newPosition"    # I
    .param p4, "isPlatformSlice"    # Z

    .line 128
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 133
    const/4 v0, -0x1

    if-eq p3, v0, :cond_3

    .line 137
    invoke-direct {p0, p1, p2}, Lcom/android/settings/slices/SliceBroadcastReceiver;->getPreferenceController(Landroid/content/Context;Ljava/lang/String;)Lcom/android/settings/core/BasePreferenceController;

    move-result-object v0

    .line 139
    .local v0, "controller":Lcom/android/settings/core/BasePreferenceController;
    instance-of v1, v0, Lcom/android/settings/core/SliderPreferenceController;

    if-eqz v1, :cond_2

    .line 143
    invoke-virtual {v0}, Lcom/android/settings/core/BasePreferenceController;->isAvailable()Z

    move-result v1

    if-nez v1, :cond_0

    .line 144
    sget-object v1, Lcom/android/settings/slices/SliceBroadcastReceiver;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Can\'t update "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " since the setting is unavailable"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 145
    invoke-direct {p0, p1, p2, p4}, Lcom/android/settings/slices/SliceBroadcastReceiver;->updateUri(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 146
    return-void

    .line 149
    :cond_0
    move-object v1, v0

    check-cast v1, Lcom/android/settings/core/SliderPreferenceController;

    .line 150
    .local v1, "sliderController":Lcom/android/settings/core/SliderPreferenceController;
    invoke-virtual {v1}, Lcom/android/settings/core/SliderPreferenceController;->getMaxSteps()I

    move-result v2

    .line 151
    .local v2, "maxSteps":I
    if-ltz p3, :cond_1

    if-gt p3, v2, :cond_1

    .line 157
    invoke-virtual {v1, p3}, Lcom/android/settings/core/SliderPreferenceController;->setSliderPosition(I)Z

    .line 158
    invoke-direct {p0, p1, p2, p3}, Lcom/android/settings/slices/SliceBroadcastReceiver;->logSliceValueChange(Landroid/content/Context;Ljava/lang/String;I)V

    .line 159
    invoke-direct {p0, p1, p2, p4}, Lcom/android/settings/slices/SliceBroadcastReceiver;->updateUri(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 160
    return-void

    .line 152
    :cond_1
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Invalid position passed to Slider controller. Expected between 0 and "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " but found "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 140
    .end local v1    # "sliderController":Lcom/android/settings/core/SliderPreferenceController;
    .end local v2    # "maxSteps":I
    :cond_2
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Slider action passed for a non-slider key: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 134
    .end local v0    # "controller":Lcom/android/settings/core/BasePreferenceController;
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid position passed to Slider controller"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 129
    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "No key passed to Intent for slider controller. Use extra: com.android.settings.slice.extra.key"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private handleToggleAction(Landroid/content/Context;Ljava/lang/String;ZZ)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "isChecked"    # Z
    .param p4, "isPlatformSlice"    # Z

    .line 98
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 102
    invoke-direct {p0, p1, p2}, Lcom/android/settings/slices/SliceBroadcastReceiver;->getPreferenceController(Landroid/content/Context;Ljava/lang/String;)Lcom/android/settings/core/BasePreferenceController;

    move-result-object v0

    .line 104
    .local v0, "controller":Lcom/android/settings/core/BasePreferenceController;
    instance-of v1, v0, Lcom/android/settings/core/TogglePreferenceController;

    if-eqz v1, :cond_3

    .line 108
    invoke-virtual {v0}, Lcom/android/settings/core/BasePreferenceController;->isAvailable()Z

    move-result v1

    if-nez v1, :cond_1

    .line 109
    sget-object v1, Lcom/android/settings/slices/SliceBroadcastReceiver;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Can\'t update "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " since the setting is unavailable"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 110
    invoke-virtual {v0}, Lcom/android/settings/core/BasePreferenceController;->hasAsyncUpdate()Z

    move-result v1

    if-nez v1, :cond_0

    .line 111
    invoke-direct {p0, p1, p2, p4}, Lcom/android/settings/slices/SliceBroadcastReceiver;->updateUri(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 113
    :cond_0
    return-void

    .line 118
    :cond_1
    move-object v1, v0

    check-cast v1, Lcom/android/settings/core/TogglePreferenceController;

    .line 119
    .local v1, "toggleController":Lcom/android/settings/core/TogglePreferenceController;
    invoke-virtual {v1, p3}, Lcom/android/settings/core/TogglePreferenceController;->setChecked(Z)Z

    .line 120
    invoke-direct {p0, p1, p2, p3}, Lcom/android/settings/slices/SliceBroadcastReceiver;->logSliceValueChange(Landroid/content/Context;Ljava/lang/String;I)V

    .line 121
    invoke-virtual {v0}, Lcom/android/settings/core/BasePreferenceController;->hasAsyncUpdate()Z

    move-result v2

    if-nez v2, :cond_2

    .line 122
    invoke-direct {p0, p1, p2, p4}, Lcom/android/settings/slices/SliceBroadcastReceiver;->updateUri(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 124
    :cond_2
    return-void

    .line 105
    .end local v1    # "toggleController":Lcom/android/settings/core/TogglePreferenceController;
    :cond_3
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Toggle action passed for a non-toggle key: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 99
    .end local v0    # "controller":Lcom/android/settings/core/BasePreferenceController;
    :cond_4
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "No key passed to Intent for toggle controller"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private logSliceValueChange(Landroid/content/Context;Ljava/lang/String;I)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "sliceKey"    # Ljava/lang/String;
    .param p3, "newValue"    # I

    .line 167
    nop

    .line 168
    const/16 v0, 0x356

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 167
    invoke-static {v0, p2}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v0

    .line 169
    .local v0, "namePair":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/Object;>;"
    nop

    .line 170
    const/16 v1, 0x441

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 169
    invoke-static {v1, v2}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v1

    .line 171
    .local v1, "valuePair":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/Object;>;"
    invoke-static {p1}, Lcom/android/settings/overlay/FeatureFactory;->getFactory(Landroid/content/Context;)Lcom/android/settings/overlay/FeatureFactory;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/settings/overlay/FeatureFactory;->getMetricsFeatureProvider()Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;

    move-result-object v2

    const/4 v3, 0x2

    new-array v3, v3, [Landroid/util/Pair;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    const/4 v4, 0x1

    aput-object v1, v3, v4

    .line 172
    const/16 v4, 0x55c

    invoke-virtual {v2, p1, v4, v3}, Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;->action(Landroid/content/Context;I[Landroid/util/Pair;)V

    .line 173
    return-void
.end method

.method private updateUri(Landroid/content/Context;Ljava/lang/String;Z)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "isPlatformDefined"    # Z

    .line 182
    if-eqz p3, :cond_0

    .line 183
    const-string v0, "android.settings.slices"

    goto :goto_0

    .line 184
    :cond_0
    const-string v0, "com.android.settings.slices"

    .line 185
    .local v0, "authority":Ljava/lang/String;
    :goto_0
    new-instance v1, Landroid/net/Uri$Builder;

    invoke-direct {v1}, Landroid/net/Uri$Builder;-><init>()V

    const-string v2, "content"

    .line 186
    invoke-virtual {v1, v2}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    .line 187
    invoke-virtual {v1, v0}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    const-string v2, "action"

    .line 188
    invoke-virtual {v1, v2}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    .line 189
    invoke-virtual {v1, p2}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    .line 190
    invoke-virtual {v1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    .line 191
    .local v1, "uri":Landroid/net/Uri;
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v1, v3}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 192
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 58
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 59
    .local v0, "action":Ljava/lang/String;
    const-string v1, "com.android.settings.slice.extra.key"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 60
    .local v1, "key":Ljava/lang/String;
    const-string v2, "com.android.settings.slice.extra.platform"

    const/4 v3, 0x0

    invoke-virtual {p2, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    .line 63
    .local v2, "isPlatformSlice":Z
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v4

    const/4 v5, -0x1

    sparse-switch v4, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v4, "com.android.settings.notification.ZEN_MODE_CHANGED"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v4, 0x5

    goto :goto_1

    :sswitch_1
    const-string v4, "com.android.settings.wifi.action.WIFI_CHANGED"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v4, 0x3

    goto :goto_1

    :sswitch_2
    const-string v4, "com.android.settings.slice.action.SLIDER_CHANGED"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v4, 0x1

    goto :goto_1

    :sswitch_3
    const-string v4, "com.android.settings.wifi.calling.action.WIFI_CALLING_CHANGED"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v4, 0x4

    goto :goto_1

    :sswitch_4
    const-string v4, "com.android.settings.bluetooth.action.BLUETOOTH_MODE_CHANGED"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v4, 0x2

    goto :goto_1

    :sswitch_5
    const-string v4, "com.android.settings.slice.action.TOGGLE_CHANGED"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    move v4, v3

    goto :goto_1

    :cond_0
    :goto_0
    move v4, v5

    :goto_1
    packed-switch v4, :pswitch_data_0

    .line 88
    const-string v3, "uri"

    invoke-virtual {p2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 89
    .local v3, "uriString":Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 90
    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    .line 91
    .local v4, "uri":Landroid/net/Uri;
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v5, v4, v6}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .end local v3    # "uriString":Ljava/lang/String;
    .end local v4    # "uri":Landroid/net/Uri;
    goto :goto_2

    .line 85
    :pswitch_0
    invoke-static {p1, p2}, Lcom/android/settings/notification/ZenModeSliceBuilder;->handleUriChange(Landroid/content/Context;Landroid/content/Intent;)V

    .line 86
    goto :goto_2

    .line 79
    :pswitch_1
    invoke-static {p1}, Lcom/android/settings/overlay/FeatureFactory;->getFactory(Landroid/content/Context;)Lcom/android/settings/overlay/FeatureFactory;

    move-result-object v3

    .line 80
    invoke-virtual {v3}, Lcom/android/settings/overlay/FeatureFactory;->getSlicesFeatureProvider()Lcom/android/settings/slices/SlicesFeatureProvider;

    move-result-object v3

    .line 81
    invoke-interface {v3, p1}, Lcom/android/settings/slices/SlicesFeatureProvider;->getNewWifiCallingSliceHelper(Landroid/content/Context;)Lcom/android/settings/wifi/calling/WifiCallingSliceHelper;

    move-result-object v3

    .line 82
    invoke-virtual {v3, p2}, Lcom/android/settings/wifi/calling/WifiCallingSliceHelper;->handleWifiCallingChanged(Landroid/content/Intent;)V

    .line 83
    goto :goto_2

    .line 76
    :pswitch_2
    invoke-static {p1, p2}, Lcom/android/settings/wifi/WifiSliceBuilder;->handleUriChange(Landroid/content/Context;Landroid/content/Intent;)V

    .line 77
    goto :goto_2

    .line 73
    :pswitch_3
    invoke-static {p1, p2}, Lcom/android/settings/bluetooth/BluetoothSliceBuilder;->handleUriChange(Landroid/content/Context;Landroid/content/Intent;)V

    .line 74
    goto :goto_2

    .line 69
    :pswitch_4
    const-string v3, "android.app.slice.extra.RANGE_VALUE"

    invoke-virtual {p2, v3, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .line 70
    .local v3, "newPosition":I
    invoke-direct {p0, p1, v1, v3, v2}, Lcom/android/settings/slices/SliceBroadcastReceiver;->handleSliderAction(Landroid/content/Context;Ljava/lang/String;IZ)V

    .line 71
    goto :goto_2

    .line 65
    .end local v3    # "newPosition":I
    :pswitch_5
    const-string v4, "android.app.slice.extra.TOGGLE_STATE"

    invoke-virtual {p2, v4, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    .line 66
    .local v3, "isChecked":Z
    invoke-direct {p0, p1, v1, v3, v2}, Lcom/android/settings/slices/SliceBroadcastReceiver;->handleToggleAction(Landroid/content/Context;Ljava/lang/String;ZZ)V

    .line 67
    nop

    .line 94
    .end local v3    # "isChecked":Z
    :cond_1
    :goto_2
    return-void

    :sswitch_data_0
    .sparse-switch
        -0x7bba0bda -> :sswitch_5
        -0x379033de -> :sswitch_4
        -0x1598e57d -> :sswitch_3
        0x10bd4b3 -> :sswitch_2
        0x2e31cf48 -> :sswitch_1
        0x720b8ab8 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
