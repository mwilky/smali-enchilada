.class public Lcom/android/server/connectivity/tethering/TetheringConfiguration;
.super Ljava/lang/Object;
.source "TetheringConfiguration.java"


# static fields
.field private static final DHCP_DEFAULT_RANGE:[Ljava/lang/String;

.field public static final DUN_NOT_REQUIRED:I = 0x0
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field public static final DUN_REQUIRED:I = 0x1

.field public static final DUN_UNSPECIFIED:I = 0x2

.field private static final EMPTY_STRING_ARRAY:[Ljava/lang/String;

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final DEFAULT_IPV4_DNS:[Ljava/lang/String;

.field public final defaultIPv4DNS:[Ljava/lang/String;

.field public final dhcpRanges:[Ljava/lang/String;

.field public final dunCheck:I

.field public final isDunRequired:Z

.field public final preferredUpstreamIfaceTypes:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public final provisioningApp:[Ljava/lang/String;

.field public final provisioningAppNoUi:Ljava/lang/String;

.field public final tetherableBluetoothRegexs:[Ljava/lang/String;

.field public final tetherableUsbRegexs:[Ljava/lang/String;

.field public final tetherableWifiRegexs:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 17

    .line 62
    const-class v0, Lcom/android/server/connectivity/tethering/TetheringConfiguration;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/connectivity/tethering/TetheringConfiguration;->TAG:Ljava/lang/String;

    .line 64
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    sput-object v0, Lcom/android/server/connectivity/tethering/TetheringConfiguration;->EMPTY_STRING_ARRAY:[Ljava/lang/String;

    .line 76
    const-string v1, "192.168.42.2"

    const-string v2, "192.168.42.254"

    const-string v3, "192.168.43.2"

    const-string v4, "192.168.43.254"

    const-string v5, "192.168.44.2"

    const-string v6, "192.168.44.254"

    const-string v7, "192.168.45.2"

    const-string v8, "192.168.45.254"

    const-string v9, "192.168.46.2"

    const-string v10, "192.168.46.254"

    const-string v11, "192.168.47.2"

    const-string v12, "192.168.47.254"

    const-string v13, "192.168.48.2"

    const-string v14, "192.168.48.254"

    const-string v15, "192.168.49.2"

    const-string v16, "192.168.49.254"

    filled-new-array/range {v1 .. v16}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/connectivity/tethering/TetheringConfiguration;->DHCP_DEFAULT_RANGE:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/net/util/SharedLog;)V
    .locals 5
    .param p1, "ctx"    # Landroid/content/Context;
    .param p2, "log"    # Landroid/net/util/SharedLog;

    .line 97
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 83
    const-string v0, "8.8.4.4"

    const-string v1, "8.8.8.8"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/connectivity/tethering/TetheringConfiguration;->DEFAULT_IPV4_DNS:[Ljava/lang/String;

    .line 98
    const-string v0, "config"

    invoke-virtual {p2, v0}, Landroid/net/util/SharedLog;->forSubComponent(Ljava/lang/String;)Landroid/net/util/SharedLog;

    move-result-object v0

    .line 100
    .local v0, "configLog":Landroid/net/util/SharedLog;
    const v1, 0x107004e

    invoke-static {p1, v1}, Lcom/android/server/connectivity/tethering/TetheringConfiguration;->getResourceStringArray(Landroid/content/Context;I)[Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/connectivity/tethering/TetheringConfiguration;->tetherableUsbRegexs:[Ljava/lang/String;

    .line 104
    const-string/jumbo v1, "persist.vendor.fst.softap.en"

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v1

    const/4 v3, 0x1

    if-ne v1, v3, :cond_0

    .line 105
    const-string v1, "bond0"

    .line 106
    .local v1, "defaultFstInterfaceName":Ljava/lang/String;
    const-string/jumbo v4, "persist.vendor.fst.data.interface"

    invoke-static {v4, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 108
    .local v4, "fstInterfaceName":Ljava/lang/String;
    new-array v3, v3, [Ljava/lang/String;

    aput-object v4, v3, v2

    iput-object v3, p0, Lcom/android/server/connectivity/tethering/TetheringConfiguration;->tetherableWifiRegexs:[Ljava/lang/String;

    .line 109
    .end local v1    # "defaultFstInterfaceName":Ljava/lang/String;
    .end local v4    # "fstInterfaceName":Ljava/lang/String;
    goto :goto_0

    .line 110
    :cond_0
    const v1, 0x107004f

    invoke-static {p1, v1}, Lcom/android/server/connectivity/tethering/TetheringConfiguration;->getResourceStringArray(Landroid/content/Context;I)[Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/connectivity/tethering/TetheringConfiguration;->tetherableWifiRegexs:[Ljava/lang/String;

    .line 112
    :goto_0
    const v1, 0x107004b

    invoke-static {p1, v1}, Lcom/android/server/connectivity/tethering/TetheringConfiguration;->getResourceStringArray(Landroid/content/Context;I)[Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/connectivity/tethering/TetheringConfiguration;->tetherableBluetoothRegexs:[Ljava/lang/String;

    .line 114
    invoke-static {p1}, Lcom/android/server/connectivity/tethering/TetheringConfiguration;->checkDunRequired(Landroid/content/Context;)I

    move-result v1

    iput v1, p0, Lcom/android/server/connectivity/tethering/TetheringConfiguration;->dunCheck:I

    .line 115
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DUN check returned: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/connectivity/tethering/TetheringConfiguration;->dunCheck:I

    invoke-static {v2}, Lcom/android/server/connectivity/tethering/TetheringConfiguration;->dunCheckString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/net/util/SharedLog;->log(Ljava/lang/String;)V

    .line 117
    iget v1, p0, Lcom/android/server/connectivity/tethering/TetheringConfiguration;->dunCheck:I

    invoke-static {p1, v1}, Lcom/android/server/connectivity/tethering/TetheringConfiguration;->getUpstreamIfaceTypes(Landroid/content/Context;I)Ljava/util/Collection;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/connectivity/tethering/TetheringConfiguration;->preferredUpstreamIfaceTypes:Ljava/util/Collection;

    .line 118
    iget-object v1, p0, Lcom/android/server/connectivity/tethering/TetheringConfiguration;->preferredUpstreamIfaceTypes:Ljava/util/Collection;

    const/4 v2, 0x4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/server/connectivity/tethering/TetheringConfiguration;->isDunRequired:Z

    .line 120
    invoke-static {p1}, Lcom/android/server/connectivity/tethering/TetheringConfiguration;->getDhcpRanges(Landroid/content/Context;)[Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/connectivity/tethering/TetheringConfiguration;->dhcpRanges:[Ljava/lang/String;

    .line 121
    iget-object v1, p0, Lcom/android/server/connectivity/tethering/TetheringConfiguration;->DEFAULT_IPV4_DNS:[Ljava/lang/String;

    invoke-static {v1}, Lcom/android/server/connectivity/tethering/TetheringConfiguration;->copy([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/connectivity/tethering/TetheringConfiguration;->defaultIPv4DNS:[Ljava/lang/String;

    .line 123
    const v1, 0x1070033

    invoke-static {p1, v1}, Lcom/android/server/connectivity/tethering/TetheringConfiguration;->getResourceStringArray(Landroid/content/Context;I)[Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/connectivity/tethering/TetheringConfiguration;->provisioningApp:[Ljava/lang/String;

    .line 124
    invoke-static {p1}, Lcom/android/server/connectivity/tethering/TetheringConfiguration;->getProvisioningAppNoUi(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/connectivity/tethering/TetheringConfiguration;->provisioningAppNoUi:Ljava/lang/String;

    .line 126
    invoke-virtual {p0}, Lcom/android/server/connectivity/tethering/TetheringConfiguration;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/net/util/SharedLog;->log(Ljava/lang/String;)V

    .line 127
    return-void
.end method

.method private static appendIfNotPresent(Ljava/util/ArrayList;I)V
    .locals 1
    .param p1, "value"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;I)V"
        }
    .end annotation

    .line 316
    .local p0, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 317
    :cond_0
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 318
    return-void
.end method

.method public static checkDunRequired(Landroid/content/Context;)I
    .locals 2
    .param p0, "ctx"    # Landroid/content/Context;

    .line 216
    const-string/jumbo v0, "phone"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 217
    .local v0, "tm":Landroid/telephony/TelephonyManager;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getTetherApnRequired()I

    move-result v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x2

    :goto_0
    return v1
.end method

.method private static varargs containsOneOf(Ljava/util/ArrayList;[Ljava/lang/Integer;)Z
    .locals 5
    .param p1, "values"    # [Ljava/lang/Integer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;[",
            "Ljava/lang/Integer;",
            ")Z"
        }
    .end annotation

    .line 321
    .local p0, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    array-length v0, p1

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1

    aget-object v3, p1, v2

    .line 322
    .local v3, "value":Ljava/lang/Integer;
    invoke-virtual {p0, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v0, 0x1

    return v0

    .line 321
    .end local v3    # "value":Ljava/lang/Integer;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 324
    :cond_1
    return v1
.end method

.method private static copy([Ljava/lang/String;)[Ljava/lang/String;
    .locals 1
    .param p0, "strarray"    # [Ljava/lang/String;

    .line 307
    array-length v0, p0

    invoke-static {p0, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    return-object v0
.end method

.method private static dumpStringArray(Ljava/io/PrintWriter;Ljava/lang/String;[Ljava/lang/String;)V
    .locals 4
    .param p0, "pw"    # Ljava/io/PrintWriter;
    .param p1, "label"    # Ljava/lang/String;
    .param p2, "values"    # [Ljava/lang/String;

    .line 179
    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 180
    const-string v0, ": "

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 182
    if-eqz p2, :cond_1

    .line 183
    new-instance v0, Ljava/util/StringJoiner;

    const-string v1, ", "

    const-string v2, "["

    const-string v3, "]"

    invoke-direct {v0, v1, v2, v3}, Ljava/util/StringJoiner;-><init>(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    .line 184
    .local v0, "sj":Ljava/util/StringJoiner;
    array-length v1, p2

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, p2, v2

    .line 184
    .local v3, "value":Ljava/lang/String;
    invoke-virtual {v0, v3}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 184
    .end local v3    # "value":Ljava/lang/String;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 185
    :cond_0
    invoke-virtual {v0}, Ljava/util/StringJoiner;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 186
    .end local v0    # "sj":Ljava/util/StringJoiner;
    goto :goto_1

    .line 187
    :cond_1
    const-string/jumbo v0, "null"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 190
    :goto_1
    invoke-virtual {p0}, Ljava/io/PrintWriter;->println()V

    .line 191
    return-void
.end method

.method private static dunCheckString(I)Ljava/lang/String;
    .locals 4
    .param p0, "dunCheck"    # I

    .line 221
    packed-switch p0, :pswitch_data_0

    .line 226
    const-string v0, "UNKNOWN (%s)"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 224
    :pswitch_0
    const-string v0, "DUN_UNSPECIFIED"

    return-object v0

    .line 223
    :pswitch_1
    const-string v0, "DUN_REQUIRED"

    return-object v0

    .line 222
    :pswitch_2
    const-string v0, "DUN_NOT_REQUIRED"

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static getDhcpRanges(Landroid/content/Context;)[Ljava/lang/String;
    .locals 2
    .param p0, "ctx"    # Landroid/content/Context;

    .line 282
    const v0, 0x107004c

    invoke-static {p0, v0}, Lcom/android/server/connectivity/tethering/TetheringConfiguration;->getResourceStringArray(Landroid/content/Context;I)[Ljava/lang/String;

    move-result-object v0

    .line 283
    .local v0, "fromResource":[Ljava/lang/String;
    array-length v1, v0

    if-lez v1, :cond_0

    array-length v1, v0

    rem-int/lit8 v1, v1, 0x2

    if-nez v1, :cond_0

    .line 284
    return-object v0

    .line 286
    :cond_0
    sget-object v1, Lcom/android/server/connectivity/tethering/TetheringConfiguration;->DHCP_DEFAULT_RANGE:[Ljava/lang/String;

    invoke-static {v1}, Lcom/android/server/connectivity/tethering/TetheringConfiguration;->copy([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private static getProvisioningAppNoUi(Landroid/content/Context;)Ljava/lang/String;
    .locals 2
    .param p0, "ctx"    # Landroid/content/Context;

    .line 291
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x104016a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 292
    :catch_0
    move-exception v0

    .line 293
    .local v0, "e":Landroid/content/res/Resources$NotFoundException;
    const-string v1, ""

    return-object v1
.end method

.method private static getResourceStringArray(Landroid/content/Context;I)[Ljava/lang/String;
    .locals 2
    .param p0, "ctx"    # Landroid/content/Context;
    .param p1, "resId"    # I

    .line 299
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    .line 300
    .local v0, "strArray":[Ljava/lang/String;
    if-eqz v0, :cond_0

    move-object v1, v0

    goto :goto_0

    :cond_0
    sget-object v1, Lcom/android/server/connectivity/tethering/TetheringConfiguration;->EMPTY_STRING_ARRAY:[Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v1

    .line 301
    .end local v0    # "strArray":[Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 302
    .local v0, "e404":Landroid/content/res/Resources$NotFoundException;
    sget-object v1, Lcom/android/server/connectivity/tethering/TetheringConfiguration;->EMPTY_STRING_ARRAY:[Ljava/lang/String;

    return-object v1
.end method

.method private static getUpstreamIfaceTypes(Landroid/content/Context;I)Ljava/util/Collection;
    .locals 7
    .param p0, "ctx"    # Landroid/content/Context;
    .param p1, "dunCheck"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I)",
            "Ljava/util/Collection<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 231
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x107004d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v0

    .line 232
    .local v0, "ifaceTypes":[I
    new-instance v1, Ljava/util/ArrayList;

    array-length v2, v0

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 233
    .local v1, "upstreamIfaceTypes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    array-length v2, v0

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    const/4 v5, 0x1

    if-ge v4, v2, :cond_2

    aget v6, v0, v4

    .line 234
    .local v6, "i":I
    if-eqz v6, :cond_0

    packed-switch v6, :pswitch_data_0

    goto :goto_1

    .line 240
    :pswitch_0
    if-nez p1, :cond_1

    .end local v6    # "i":I
    goto :goto_2

    .line 237
    .restart local v6    # "i":I
    :cond_0
    :pswitch_1
    if-ne p1, v5, :cond_1

    .end local v6    # "i":I
    goto :goto_2

    .line 243
    .restart local v6    # "i":I
    :cond_1
    :goto_1
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 233
    .end local v6    # "i":I
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 250
    :cond_2
    const/4 v2, 0x4

    if-ne p1, v5, :cond_3

    .line 251
    invoke-static {v1, v2}, Lcom/android/server/connectivity/tethering/TetheringConfiguration;->appendIfNotPresent(Ljava/util/ArrayList;I)V

    goto :goto_3

    .line 252
    :cond_3
    const/4 v4, 0x5

    if-nez p1, :cond_4

    .line 253
    invoke-static {v1, v3}, Lcom/android/server/connectivity/tethering/TetheringConfiguration;->appendIfNotPresent(Ljava/util/ArrayList;I)V

    .line 254
    invoke-static {v1, v4}, Lcom/android/server/connectivity/tethering/TetheringConfiguration;->appendIfNotPresent(Ljava/util/ArrayList;I)V

    goto :goto_3

    .line 260
    :cond_4
    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/Integer;

    .line 261
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v6, v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v6, v5

    const/4 v2, 0x2

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v6, v2

    .line 260
    invoke-static {v1, v6}, Lcom/android/server/connectivity/tethering/TetheringConfiguration;->containsOneOf(Ljava/util/ArrayList;[Ljava/lang/Integer;)Z

    move-result v2

    if-nez v2, :cond_5

    .line 262
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 263
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 269
    :cond_5
    :goto_3
    const/16 v2, 0x9

    invoke-static {v1, v2}, Lcom/android/server/connectivity/tethering/TetheringConfiguration;->prependIfNotPresent(Ljava/util/ArrayList;I)V

    .line 271
    return-object v1

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private static makeString([Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "strings"    # [Ljava/lang/String;

    .line 194
    if-nez p0, :cond_0

    const-string/jumbo v0, "null"

    return-object v0

    .line 195
    :cond_0
    new-instance v0, Ljava/util/StringJoiner;

    const-string v1, ","

    const-string v2, "["

    const-string v3, "]"

    invoke-direct {v0, v1, v2, v3}, Ljava/util/StringJoiner;-><init>(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    .line 196
    .local v0, "sj":Ljava/util/StringJoiner;
    array-length v1, p0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, p0, v2

    .line 196
    .local v3, "s":Ljava/lang/String;
    invoke-virtual {v0, v3}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 196
    .end local v3    # "s":Ljava/lang/String;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 197
    :cond_1
    invoke-virtual {v0}, Ljava/util/StringJoiner;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private static matchesDownstreamRegexs(Ljava/lang/String;[Ljava/lang/String;)Z
    .locals 5
    .param p0, "iface"    # Ljava/lang/String;
    .param p1, "regexs"    # [Ljava/lang/String;

    .line 275
    array-length v0, p1

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1

    aget-object v3, p1, v2

    .line 276
    .local v3, "regex":Ljava/lang/String;
    invoke-virtual {p0, v3}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v0, 0x1

    return v0

    .line 275
    .end local v3    # "regex":Ljava/lang/String;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 278
    :cond_1
    return v1
.end method

.method private static preferredUpstreamNames(Ljava/util/Collection;)[Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/lang/Integer;",
            ">;)[",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 201
    .local p0, "upstreamTypes":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/Integer;>;"
    const/4 v0, 0x0

    .line 203
    .local v0, "upstreamNames":[Ljava/lang/String;
    if-eqz p0, :cond_0

    .line 204
    invoke-interface {p0}, Ljava/util/Collection;->size()I

    move-result v1

    new-array v0, v1, [Ljava/lang/String;

    .line 205
    const/4 v1, 0x0

    .line 206
    .local v1, "i":I
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    .line 207
    .local v3, "netType":Ljava/lang/Integer;
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-static {v4}, Landroid/net/ConnectivityManager;->getNetworkTypeName(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v0, v1

    .line 208
    add-int/lit8 v1, v1, 0x1

    .line 209
    .end local v3    # "netType":Ljava/lang/Integer;
    goto :goto_0

    .line 212
    .end local v1    # "i":I
    :cond_0
    return-object v0
.end method

.method private static prependIfNotPresent(Ljava/util/ArrayList;I)V
    .locals 2
    .param p1, "value"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;I)V"
        }
    .end annotation

    .line 311
    .local p0, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 312
    :cond_0
    const/4 v0, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 313
    return-void
.end method


# virtual methods
.method public dump(Ljava/io/PrintWriter;)V
    .locals 2
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .line 146
    const-string/jumbo v0, "tetherableUsbRegexs"

    iget-object v1, p0, Lcom/android/server/connectivity/tethering/TetheringConfiguration;->tetherableUsbRegexs:[Ljava/lang/String;

    invoke-static {p1, v0, v1}, Lcom/android/server/connectivity/tethering/TetheringConfiguration;->dumpStringArray(Ljava/io/PrintWriter;Ljava/lang/String;[Ljava/lang/String;)V

    .line 147
    const-string/jumbo v0, "tetherableWifiRegexs"

    iget-object v1, p0, Lcom/android/server/connectivity/tethering/TetheringConfiguration;->tetherableWifiRegexs:[Ljava/lang/String;

    invoke-static {p1, v0, v1}, Lcom/android/server/connectivity/tethering/TetheringConfiguration;->dumpStringArray(Ljava/io/PrintWriter;Ljava/lang/String;[Ljava/lang/String;)V

    .line 148
    const-string/jumbo v0, "tetherableBluetoothRegexs"

    iget-object v1, p0, Lcom/android/server/connectivity/tethering/TetheringConfiguration;->tetherableBluetoothRegexs:[Ljava/lang/String;

    invoke-static {p1, v0, v1}, Lcom/android/server/connectivity/tethering/TetheringConfiguration;->dumpStringArray(Ljava/io/PrintWriter;Ljava/lang/String;[Ljava/lang/String;)V

    .line 150
    const-string/jumbo v0, "isDunRequired: "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 151
    iget-boolean v0, p0, Lcom/android/server/connectivity/tethering/TetheringConfiguration;->isDunRequired:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 153
    const-string/jumbo v0, "preferredUpstreamIfaceTypes"

    iget-object v1, p0, Lcom/android/server/connectivity/tethering/TetheringConfiguration;->preferredUpstreamIfaceTypes:Ljava/util/Collection;

    .line 154
    invoke-static {v1}, Lcom/android/server/connectivity/tethering/TetheringConfiguration;->preferredUpstreamNames(Ljava/util/Collection;)[Ljava/lang/String;

    move-result-object v1

    .line 153
    invoke-static {p1, v0, v1}, Lcom/android/server/connectivity/tethering/TetheringConfiguration;->dumpStringArray(Ljava/io/PrintWriter;Ljava/lang/String;[Ljava/lang/String;)V

    .line 156
    const-string v0, "dhcpRanges"

    iget-object v1, p0, Lcom/android/server/connectivity/tethering/TetheringConfiguration;->dhcpRanges:[Ljava/lang/String;

    invoke-static {p1, v0, v1}, Lcom/android/server/connectivity/tethering/TetheringConfiguration;->dumpStringArray(Ljava/io/PrintWriter;Ljava/lang/String;[Ljava/lang/String;)V

    .line 157
    const-string v0, "defaultIPv4DNS"

    iget-object v1, p0, Lcom/android/server/connectivity/tethering/TetheringConfiguration;->defaultIPv4DNS:[Ljava/lang/String;

    invoke-static {p1, v0, v1}, Lcom/android/server/connectivity/tethering/TetheringConfiguration;->dumpStringArray(Ljava/io/PrintWriter;Ljava/lang/String;[Ljava/lang/String;)V

    .line 159
    const-string/jumbo v0, "provisioningApp"

    iget-object v1, p0, Lcom/android/server/connectivity/tethering/TetheringConfiguration;->provisioningApp:[Ljava/lang/String;

    invoke-static {p1, v0, v1}, Lcom/android/server/connectivity/tethering/TetheringConfiguration;->dumpStringArray(Ljava/io/PrintWriter;Ljava/lang/String;[Ljava/lang/String;)V

    .line 160
    const-string/jumbo v0, "provisioningAppNoUi: "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 161
    iget-object v0, p0, Lcom/android/server/connectivity/tethering/TetheringConfiguration;->provisioningAppNoUi:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 162
    return-void
.end method

.method public hasMobileHotspotProvisionApp()Z
    .locals 1

    .line 142
    iget-object v0, p0, Lcom/android/server/connectivity/tethering/TetheringConfiguration;->provisioningAppNoUi:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public isBluetooth(Ljava/lang/String;)Z
    .locals 1
    .param p1, "iface"    # Ljava/lang/String;

    .line 138
    iget-object v0, p0, Lcom/android/server/connectivity/tethering/TetheringConfiguration;->tetherableBluetoothRegexs:[Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/android/server/connectivity/tethering/TetheringConfiguration;->matchesDownstreamRegexs(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isUsb(Ljava/lang/String;)Z
    .locals 1
    .param p1, "iface"    # Ljava/lang/String;

    .line 130
    iget-object v0, p0, Lcom/android/server/connectivity/tethering/TetheringConfiguration;->tetherableUsbRegexs:[Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/android/server/connectivity/tethering/TetheringConfiguration;->matchesDownstreamRegexs(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isWifi(Ljava/lang/String;)Z
    .locals 1
    .param p1, "iface"    # Ljava/lang/String;

    .line 134
    iget-object v0, p0, Lcom/android/server/connectivity/tethering/TetheringConfiguration;->tetherableWifiRegexs:[Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/android/server/connectivity/tethering/TetheringConfiguration;->matchesDownstreamRegexs(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    .line 165
    new-instance v0, Ljava/util/StringJoiner;

    const-string v1, " "

    invoke-direct {v0, v1}, Ljava/util/StringJoiner;-><init>(Ljava/lang/CharSequence;)V

    .line 166
    .local v0, "sj":Ljava/util/StringJoiner;
    const-string/jumbo v1, "tetherableUsbRegexs:%s"

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/android/server/connectivity/tethering/TetheringConfiguration;->tetherableUsbRegexs:[Ljava/lang/String;

    invoke-static {v4}, Lcom/android/server/connectivity/tethering/TetheringConfiguration;->makeString([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 167
    const-string/jumbo v1, "tetherableWifiRegexs:%s"

    new-array v3, v2, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/android/server/connectivity/tethering/TetheringConfiguration;->tetherableWifiRegexs:[Ljava/lang/String;

    invoke-static {v4}, Lcom/android/server/connectivity/tethering/TetheringConfiguration;->makeString([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 168
    const-string/jumbo v1, "tetherableBluetoothRegexs:%s"

    new-array v3, v2, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/android/server/connectivity/tethering/TetheringConfiguration;->tetherableBluetoothRegexs:[Ljava/lang/String;

    .line 169
    invoke-static {v4}, Lcom/android/server/connectivity/tethering/TetheringConfiguration;->makeString([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v5

    .line 168
    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 170
    const-string/jumbo v1, "isDunRequired:%s"

    new-array v3, v2, [Ljava/lang/Object;

    iget-boolean v4, p0, Lcom/android/server/connectivity/tethering/TetheringConfiguration;->isDunRequired:Z

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 171
    const-string/jumbo v1, "preferredUpstreamIfaceTypes:%s"

    new-array v3, v2, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/android/server/connectivity/tethering/TetheringConfiguration;->preferredUpstreamIfaceTypes:Ljava/util/Collection;

    .line 172
    invoke-static {v4}, Lcom/android/server/connectivity/tethering/TetheringConfiguration;->preferredUpstreamNames(Ljava/util/Collection;)[Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/server/connectivity/tethering/TetheringConfiguration;->makeString([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v5

    .line 171
    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 173
    const-string/jumbo v1, "provisioningApp:%s"

    new-array v3, v2, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/android/server/connectivity/tethering/TetheringConfiguration;->provisioningApp:[Ljava/lang/String;

    invoke-static {v4}, Lcom/android/server/connectivity/tethering/TetheringConfiguration;->makeString([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 174
    const-string/jumbo v1, "provisioningAppNoUi:%s"

    new-array v3, v2, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/android/server/connectivity/tethering/TetheringConfiguration;->provisioningAppNoUi:Ljava/lang/String;

    aput-object v4, v3, v5

    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 175
    const-string v1, "TetheringConfiguration{%s}"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/util/StringJoiner;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
