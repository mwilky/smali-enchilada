.class public Lcom/android/settings/wifi/WifiSliceBuilder;
.super Ljava/lang/Object;
.source "WifiSliceBuilder.java"


# static fields
.field public static final ACTION_WIFI_SLICE_CHANGED:Ljava/lang/String; = "com.android.settings.wifi.action.WIFI_CHANGED"

.field public static final INTENT_FILTER:Landroid/content/IntentFilter;

.field public static final WIFI_URI:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroid/net/Uri$Builder;

    invoke-direct {v0}, Landroid/net/Uri$Builder;-><init>()V

    const-string v1, "content"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "android.settings.slices"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "action"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "wifi"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/settings/wifi/WifiSliceBuilder;->WIFI_URI:Landroid/net/Uri;

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    sput-object v0, Lcom/android/settings/wifi/WifiSliceBuilder;->INTENT_FILTER:Landroid/content/IntentFilter;

    sget-object v0, Lcom/android/settings/wifi/WifiSliceBuilder;->INTENT_FILTER:Landroid/content/IntentFilter;

    const-string v1, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    sget-object v0, Lcom/android/settings/wifi/WifiSliceBuilder;->INTENT_FILTER:Landroid/content/IntentFilter;

    const-string v1, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static getBroadcastIntent(Landroid/content/Context;)Landroid/app/PendingIntent;
    .locals 3

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.settings.wifi.action.WIFI_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-class v1, Lcom/android/settings/slices/SliceBroadcastReceiver;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    const/4 v1, 0x0

    const/high16 v2, 0x10000000

    invoke-static {p0, v1, v0, v2}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    return-object v1
.end method

.method public static getIntent(Landroid/content/Context;)Landroid/content/Intent;
    .locals 5

    const v0, 0x7f1214d3

    invoke-virtual {p0, v0}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Landroid/net/Uri$Builder;

    invoke-direct {v1}, Landroid/net/Uri$Builder;-><init>()V

    const-string v2, "wifi"

    invoke-virtual {v1, v2}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    const-class v2, Lcom/android/settings/wifi/WifiSettings;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "wifi"

    const/16 v4, 0x25b

    invoke-static {p0, v2, v3, v0, v4}, Lcom/android/settings/search/DatabaseIndexingUtils;->buildSearchResultPageIntent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const-class v4, Lcom/android/settings/SubSettings;

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v2

    return-object v2
.end method

.method private static getPrimaryAction(Landroid/content/Context;)Landroid/app/PendingIntent;
    .locals 2

    invoke-static {p0}, Lcom/android/settings/wifi/WifiSliceBuilder;->getIntent(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p0, v1, v0, v1}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    return-object v1
.end method

.method public static getSlice(Landroid/content/Context;)Landroidx/slice/Slice;
    .locals 13

    invoke-static {p0}, Lcom/android/settings/wifi/WifiSliceBuilder;->isWifiEnabled(Landroid/content/Context;)Z

    move-result v0

    const v1, 0x7f080229

    invoke-static {p0, v1}, Landroid/support/v4/graphics/drawable/IconCompat;->createWithResource(Landroid/content/Context;I)Landroid/support/v4/graphics/drawable/IconCompat;

    move-result-object v1

    const v2, 0x7f1214d3

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {p0}, Lcom/android/settings/wifi/WifiSliceBuilder;->getSummary(Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-static {p0}, Lcom/android/settings/Utils;->getColorAccent(Landroid/content/Context;)I

    move-result v4

    invoke-static {p0}, Lcom/android/settings/wifi/WifiSliceBuilder;->getBroadcastIntent(Landroid/content/Context;)Landroid/app/PendingIntent;

    move-result-object v5

    invoke-static {p0}, Lcom/android/settings/wifi/WifiSliceBuilder;->getPrimaryAction(Landroid/content/Context;)Landroid/app/PendingIntent;

    move-result-object v6

    new-instance v7, Landroidx/slice/builders/SliceAction;

    invoke-direct {v7, v6, v1, v2}, Landroidx/slice/builders/SliceAction;-><init>(Landroid/app/PendingIntent;Landroid/support/v4/graphics/drawable/IconCompat;Ljava/lang/CharSequence;)V

    new-instance v8, Landroidx/slice/builders/SliceAction;

    const/4 v9, 0x0

    invoke-direct {v8, v5, v9, v0}, Landroidx/slice/builders/SliceAction;-><init>(Landroid/app/PendingIntent;Ljava/lang/CharSequence;Z)V

    new-instance v9, Landroidx/slice/builders/ListBuilder;

    sget-object v10, Lcom/android/settings/wifi/WifiSliceBuilder;->WIFI_URI:Landroid/net/Uri;

    const-wide/16 v11, -0x1

    invoke-direct {v9, p0, v10, v11, v12}, Landroidx/slice/builders/ListBuilder;-><init>(Landroid/content/Context;Landroid/net/Uri;J)V

    invoke-virtual {v9, v4}, Landroidx/slice/builders/ListBuilder;->setAccentColor(I)Landroidx/slice/builders/ListBuilder;

    move-result-object v9

    new-instance v10, Lcom/android/settings/wifi/-$$Lambda$WifiSliceBuilder$zGyWboi-khe6O7kGcUmHExYnEzU;

    invoke-direct {v10, v2, v3, v8, v7}, Lcom/android/settings/wifi/-$$Lambda$WifiSliceBuilder$zGyWboi-khe6O7kGcUmHExYnEzU;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;Landroidx/slice/builders/SliceAction;Landroidx/slice/builders/SliceAction;)V

    invoke-virtual {v9, v10}, Landroidx/slice/builders/ListBuilder;->addRow(Landroid/support/v4/util/Consumer;)Landroidx/slice/builders/ListBuilder;

    move-result-object v9

    invoke-virtual {v9}, Landroidx/slice/builders/ListBuilder;->build()Landroidx/slice/Slice;

    move-result-object v9

    return-object v9
.end method

.method private static getSummary(Landroid/content/Context;)Ljava/lang/CharSequence;
    .locals 4

    const-class v0, Landroid/net/wifi/WifiManager;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getWifiState()I

    move-result v1

    const v2, 0x7f12057d

    packed-switch v1, :pswitch_data_0

    const-string v1, ""

    return-object v1

    :pswitch_0
    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/wifi/WifiInfo;->removeDoubleQuotes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v3, "<unknown ssid>"

    invoke-static {v1, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {p0, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    return-object v2

    :cond_0
    return-object v1

    :pswitch_1
    invoke-virtual {p0, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    return-object v1

    :pswitch_2
    const v1, 0x7f1211a6

    invoke-virtual {p0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    return-object v1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static handleUriChange(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    const-class v0, Landroid/net/wifi/WifiManager;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    const-string v1, "android.app.slice.extra.TOGGLE_STATE"

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v2

    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    return-void
.end method

.method private static isWifiEnabled(Landroid/content/Context;)Z
    .locals 2

    const-class v0, Landroid/net/wifi/WifiManager;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getWifiState()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    const/4 v1, 0x0

    return v1

    :pswitch_0
    const/4 v1, 0x1

    return v1

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method static synthetic lambda$getSlice$0(Ljava/lang/String;Ljava/lang/CharSequence;Landroidx/slice/builders/SliceAction;Landroidx/slice/builders/SliceAction;Landroidx/slice/builders/ListBuilder$RowBuilder;)V
    .locals 1

    nop

    invoke-virtual {p4, p0}, Landroidx/slice/builders/ListBuilder$RowBuilder;->setTitle(Ljava/lang/CharSequence;)Landroidx/slice/builders/ListBuilder$RowBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroidx/slice/builders/ListBuilder$RowBuilder;->setSubtitle(Ljava/lang/CharSequence;)Landroidx/slice/builders/ListBuilder$RowBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroidx/slice/builders/ListBuilder$RowBuilder;->addEndItem(Landroidx/slice/builders/SliceAction;)Landroidx/slice/builders/ListBuilder$RowBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Landroidx/slice/builders/ListBuilder$RowBuilder;->setPrimaryAction(Landroidx/slice/builders/SliceAction;)Landroidx/slice/builders/ListBuilder$RowBuilder;

    return-void
.end method
