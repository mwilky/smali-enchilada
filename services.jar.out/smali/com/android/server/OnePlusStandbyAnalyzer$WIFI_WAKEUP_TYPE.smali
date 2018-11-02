.class public final enum Lcom/android/server/OnePlusStandbyAnalyzer$WIFI_WAKEUP_TYPE;
.super Ljava/lang/Enum;
.source "OnePlusStandbyAnalyzer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/OnePlusStandbyAnalyzer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "WIFI_WAKEUP_TYPE"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/server/OnePlusStandbyAnalyzer$WIFI_WAKEUP_TYPE;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/server/OnePlusStandbyAnalyzer$WIFI_WAKEUP_TYPE;

.field public static final enum bc:Lcom/android/server/OnePlusStandbyAnalyzer$WIFI_WAKEUP_TYPE;

.field public static final enum gscan:Lcom/android/server/OnePlusStandbyAnalyzer$WIFI_WAKEUP_TYPE;

.field public static final enum icmp:Lcom/android/server/OnePlusStandbyAnalyzer$WIFI_WAKEUP_TYPE;

.field public static final enum icmpv6:Lcom/android/server/OnePlusStandbyAnalyzer$WIFI_WAKEUP_TYPE;

.field public static final enum low_rssi:Lcom/android/server/OnePlusStandbyAnalyzer$WIFI_WAKEUP_TYPE;

.field public static final enum na:Lcom/android/server/OnePlusStandbyAnalyzer$WIFI_WAKEUP_TYPE;

.field public static final enum ns:Lcom/android/server/OnePlusStandbyAnalyzer$WIFI_WAKEUP_TYPE;

.field public static final enum oem:Lcom/android/server/OnePlusStandbyAnalyzer$WIFI_WAKEUP_TYPE;

.field public static final enum pno_complete:Lcom/android/server/OnePlusStandbyAnalyzer$WIFI_WAKEUP_TYPE;

.field public static final enum pno_match:Lcom/android/server/OnePlusStandbyAnalyzer$WIFI_WAKEUP_TYPE;

.field public static final enum ra:Lcom/android/server/OnePlusStandbyAnalyzer$WIFI_WAKEUP_TYPE;

.field public static final enum rssi_breach:Lcom/android/server/OnePlusStandbyAnalyzer$WIFI_WAKEUP_TYPE;

.field public static final enum uc:Lcom/android/server/OnePlusStandbyAnalyzer$WIFI_WAKEUP_TYPE;

.field public static final enum unspecified:Lcom/android/server/OnePlusStandbyAnalyzer$WIFI_WAKEUP_TYPE;

.field public static final enum v4_mc:Lcom/android/server/OnePlusStandbyAnalyzer$WIFI_WAKEUP_TYPE;

.field public static final enum v6_mc:Lcom/android/server/OnePlusStandbyAnalyzer$WIFI_WAKEUP_TYPE;


# direct methods
.method static constructor <clinit>()V
    .locals 17

    new-instance v0, Lcom/android/server/OnePlusStandbyAnalyzer$WIFI_WAKEUP_TYPE;

    const-string/jumbo v1, "uc"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/android/server/OnePlusStandbyAnalyzer$WIFI_WAKEUP_TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/OnePlusStandbyAnalyzer$WIFI_WAKEUP_TYPE;->uc:Lcom/android/server/OnePlusStandbyAnalyzer$WIFI_WAKEUP_TYPE;

    new-instance v0, Lcom/android/server/OnePlusStandbyAnalyzer$WIFI_WAKEUP_TYPE;

    const-string v1, "bc"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/android/server/OnePlusStandbyAnalyzer$WIFI_WAKEUP_TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/OnePlusStandbyAnalyzer$WIFI_WAKEUP_TYPE;->bc:Lcom/android/server/OnePlusStandbyAnalyzer$WIFI_WAKEUP_TYPE;

    new-instance v0, Lcom/android/server/OnePlusStandbyAnalyzer$WIFI_WAKEUP_TYPE;

    const-string/jumbo v1, "v4_mc"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/android/server/OnePlusStandbyAnalyzer$WIFI_WAKEUP_TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/OnePlusStandbyAnalyzer$WIFI_WAKEUP_TYPE;->v4_mc:Lcom/android/server/OnePlusStandbyAnalyzer$WIFI_WAKEUP_TYPE;

    new-instance v0, Lcom/android/server/OnePlusStandbyAnalyzer$WIFI_WAKEUP_TYPE;

    const-string/jumbo v1, "v6_mc"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Lcom/android/server/OnePlusStandbyAnalyzer$WIFI_WAKEUP_TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/OnePlusStandbyAnalyzer$WIFI_WAKEUP_TYPE;->v6_mc:Lcom/android/server/OnePlusStandbyAnalyzer$WIFI_WAKEUP_TYPE;

    new-instance v0, Lcom/android/server/OnePlusStandbyAnalyzer$WIFI_WAKEUP_TYPE;

    const-string/jumbo v1, "ra"

    const/4 v6, 0x4

    invoke-direct {v0, v1, v6}, Lcom/android/server/OnePlusStandbyAnalyzer$WIFI_WAKEUP_TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/OnePlusStandbyAnalyzer$WIFI_WAKEUP_TYPE;->ra:Lcom/android/server/OnePlusStandbyAnalyzer$WIFI_WAKEUP_TYPE;

    new-instance v0, Lcom/android/server/OnePlusStandbyAnalyzer$WIFI_WAKEUP_TYPE;

    const-string/jumbo v1, "ns"

    const/4 v7, 0x5

    invoke-direct {v0, v1, v7}, Lcom/android/server/OnePlusStandbyAnalyzer$WIFI_WAKEUP_TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/OnePlusStandbyAnalyzer$WIFI_WAKEUP_TYPE;->ns:Lcom/android/server/OnePlusStandbyAnalyzer$WIFI_WAKEUP_TYPE;

    new-instance v0, Lcom/android/server/OnePlusStandbyAnalyzer$WIFI_WAKEUP_TYPE;

    const-string/jumbo v1, "na"

    const/4 v8, 0x6

    invoke-direct {v0, v1, v8}, Lcom/android/server/OnePlusStandbyAnalyzer$WIFI_WAKEUP_TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/OnePlusStandbyAnalyzer$WIFI_WAKEUP_TYPE;->na:Lcom/android/server/OnePlusStandbyAnalyzer$WIFI_WAKEUP_TYPE;

    new-instance v0, Lcom/android/server/OnePlusStandbyAnalyzer$WIFI_WAKEUP_TYPE;

    const-string/jumbo v1, "pno_match"

    const/4 v9, 0x7

    invoke-direct {v0, v1, v9}, Lcom/android/server/OnePlusStandbyAnalyzer$WIFI_WAKEUP_TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/OnePlusStandbyAnalyzer$WIFI_WAKEUP_TYPE;->pno_match:Lcom/android/server/OnePlusStandbyAnalyzer$WIFI_WAKEUP_TYPE;

    new-instance v0, Lcom/android/server/OnePlusStandbyAnalyzer$WIFI_WAKEUP_TYPE;

    const-string/jumbo v1, "pno_complete"

    const/16 v10, 0x8

    invoke-direct {v0, v1, v10}, Lcom/android/server/OnePlusStandbyAnalyzer$WIFI_WAKEUP_TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/OnePlusStandbyAnalyzer$WIFI_WAKEUP_TYPE;->pno_complete:Lcom/android/server/OnePlusStandbyAnalyzer$WIFI_WAKEUP_TYPE;

    new-instance v0, Lcom/android/server/OnePlusStandbyAnalyzer$WIFI_WAKEUP_TYPE;

    const-string v1, "gscan"

    const/16 v11, 0x9

    invoke-direct {v0, v1, v11}, Lcom/android/server/OnePlusStandbyAnalyzer$WIFI_WAKEUP_TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/OnePlusStandbyAnalyzer$WIFI_WAKEUP_TYPE;->gscan:Lcom/android/server/OnePlusStandbyAnalyzer$WIFI_WAKEUP_TYPE;

    new-instance v0, Lcom/android/server/OnePlusStandbyAnalyzer$WIFI_WAKEUP_TYPE;

    const-string/jumbo v1, "low_rssi"

    const/16 v12, 0xa

    invoke-direct {v0, v1, v12}, Lcom/android/server/OnePlusStandbyAnalyzer$WIFI_WAKEUP_TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/OnePlusStandbyAnalyzer$WIFI_WAKEUP_TYPE;->low_rssi:Lcom/android/server/OnePlusStandbyAnalyzer$WIFI_WAKEUP_TYPE;

    new-instance v0, Lcom/android/server/OnePlusStandbyAnalyzer$WIFI_WAKEUP_TYPE;

    const-string/jumbo v1, "rssi_breach"

    const/16 v13, 0xb

    invoke-direct {v0, v1, v13}, Lcom/android/server/OnePlusStandbyAnalyzer$WIFI_WAKEUP_TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/OnePlusStandbyAnalyzer$WIFI_WAKEUP_TYPE;->rssi_breach:Lcom/android/server/OnePlusStandbyAnalyzer$WIFI_WAKEUP_TYPE;

    new-instance v0, Lcom/android/server/OnePlusStandbyAnalyzer$WIFI_WAKEUP_TYPE;

    const-string/jumbo v1, "icmp"

    const/16 v14, 0xc

    invoke-direct {v0, v1, v14}, Lcom/android/server/OnePlusStandbyAnalyzer$WIFI_WAKEUP_TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/OnePlusStandbyAnalyzer$WIFI_WAKEUP_TYPE;->icmp:Lcom/android/server/OnePlusStandbyAnalyzer$WIFI_WAKEUP_TYPE;

    new-instance v0, Lcom/android/server/OnePlusStandbyAnalyzer$WIFI_WAKEUP_TYPE;

    const-string/jumbo v1, "icmpv6"

    const/16 v15, 0xd

    invoke-direct {v0, v1, v15}, Lcom/android/server/OnePlusStandbyAnalyzer$WIFI_WAKEUP_TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/OnePlusStandbyAnalyzer$WIFI_WAKEUP_TYPE;->icmpv6:Lcom/android/server/OnePlusStandbyAnalyzer$WIFI_WAKEUP_TYPE;

    new-instance v0, Lcom/android/server/OnePlusStandbyAnalyzer$WIFI_WAKEUP_TYPE;

    const-string/jumbo v1, "oem"

    const/16 v15, 0xe

    invoke-direct {v0, v1, v15}, Lcom/android/server/OnePlusStandbyAnalyzer$WIFI_WAKEUP_TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/OnePlusStandbyAnalyzer$WIFI_WAKEUP_TYPE;->oem:Lcom/android/server/OnePlusStandbyAnalyzer$WIFI_WAKEUP_TYPE;

    new-instance v0, Lcom/android/server/OnePlusStandbyAnalyzer$WIFI_WAKEUP_TYPE;

    const-string/jumbo v1, "unspecified"

    const/16 v15, 0xf

    invoke-direct {v0, v1, v15}, Lcom/android/server/OnePlusStandbyAnalyzer$WIFI_WAKEUP_TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/OnePlusStandbyAnalyzer$WIFI_WAKEUP_TYPE;->unspecified:Lcom/android/server/OnePlusStandbyAnalyzer$WIFI_WAKEUP_TYPE;

    const/16 v0, 0x10

    new-array v0, v0, [Lcom/android/server/OnePlusStandbyAnalyzer$WIFI_WAKEUP_TYPE;

    sget-object v1, Lcom/android/server/OnePlusStandbyAnalyzer$WIFI_WAKEUP_TYPE;->uc:Lcom/android/server/OnePlusStandbyAnalyzer$WIFI_WAKEUP_TYPE;

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/server/OnePlusStandbyAnalyzer$WIFI_WAKEUP_TYPE;->bc:Lcom/android/server/OnePlusStandbyAnalyzer$WIFI_WAKEUP_TYPE;

    aput-object v1, v0, v3

    sget-object v1, Lcom/android/server/OnePlusStandbyAnalyzer$WIFI_WAKEUP_TYPE;->v4_mc:Lcom/android/server/OnePlusStandbyAnalyzer$WIFI_WAKEUP_TYPE;

    aput-object v1, v0, v4

    sget-object v1, Lcom/android/server/OnePlusStandbyAnalyzer$WIFI_WAKEUP_TYPE;->v6_mc:Lcom/android/server/OnePlusStandbyAnalyzer$WIFI_WAKEUP_TYPE;

    aput-object v1, v0, v5

    sget-object v1, Lcom/android/server/OnePlusStandbyAnalyzer$WIFI_WAKEUP_TYPE;->ra:Lcom/android/server/OnePlusStandbyAnalyzer$WIFI_WAKEUP_TYPE;

    aput-object v1, v0, v6

    sget-object v1, Lcom/android/server/OnePlusStandbyAnalyzer$WIFI_WAKEUP_TYPE;->ns:Lcom/android/server/OnePlusStandbyAnalyzer$WIFI_WAKEUP_TYPE;

    aput-object v1, v0, v7

    sget-object v1, Lcom/android/server/OnePlusStandbyAnalyzer$WIFI_WAKEUP_TYPE;->na:Lcom/android/server/OnePlusStandbyAnalyzer$WIFI_WAKEUP_TYPE;

    aput-object v1, v0, v8

    sget-object v1, Lcom/android/server/OnePlusStandbyAnalyzer$WIFI_WAKEUP_TYPE;->pno_match:Lcom/android/server/OnePlusStandbyAnalyzer$WIFI_WAKEUP_TYPE;

    aput-object v1, v0, v9

    sget-object v1, Lcom/android/server/OnePlusStandbyAnalyzer$WIFI_WAKEUP_TYPE;->pno_complete:Lcom/android/server/OnePlusStandbyAnalyzer$WIFI_WAKEUP_TYPE;

    aput-object v1, v0, v10

    sget-object v1, Lcom/android/server/OnePlusStandbyAnalyzer$WIFI_WAKEUP_TYPE;->gscan:Lcom/android/server/OnePlusStandbyAnalyzer$WIFI_WAKEUP_TYPE;

    aput-object v1, v0, v11

    sget-object v1, Lcom/android/server/OnePlusStandbyAnalyzer$WIFI_WAKEUP_TYPE;->low_rssi:Lcom/android/server/OnePlusStandbyAnalyzer$WIFI_WAKEUP_TYPE;

    aput-object v1, v0, v12

    sget-object v1, Lcom/android/server/OnePlusStandbyAnalyzer$WIFI_WAKEUP_TYPE;->rssi_breach:Lcom/android/server/OnePlusStandbyAnalyzer$WIFI_WAKEUP_TYPE;

    aput-object v1, v0, v13

    sget-object v1, Lcom/android/server/OnePlusStandbyAnalyzer$WIFI_WAKEUP_TYPE;->icmp:Lcom/android/server/OnePlusStandbyAnalyzer$WIFI_WAKEUP_TYPE;

    aput-object v1, v0, v14

    sget-object v1, Lcom/android/server/OnePlusStandbyAnalyzer$WIFI_WAKEUP_TYPE;->icmpv6:Lcom/android/server/OnePlusStandbyAnalyzer$WIFI_WAKEUP_TYPE;

    const/16 v2, 0xd

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/server/OnePlusStandbyAnalyzer$WIFI_WAKEUP_TYPE;->oem:Lcom/android/server/OnePlusStandbyAnalyzer$WIFI_WAKEUP_TYPE;

    const/16 v2, 0xe

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/server/OnePlusStandbyAnalyzer$WIFI_WAKEUP_TYPE;->unspecified:Lcom/android/server/OnePlusStandbyAnalyzer$WIFI_WAKEUP_TYPE;

    const/16 v2, 0xf

    aput-object v1, v0, v2

    sput-object v0, Lcom/android/server/OnePlusStandbyAnalyzer$WIFI_WAKEUP_TYPE;->$VALUES:[Lcom/android/server/OnePlusStandbyAnalyzer$WIFI_WAKEUP_TYPE;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/server/OnePlusStandbyAnalyzer$WIFI_WAKEUP_TYPE;
    .locals 1

    const-class v0, Lcom/android/server/OnePlusStandbyAnalyzer$WIFI_WAKEUP_TYPE;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/server/OnePlusStandbyAnalyzer$WIFI_WAKEUP_TYPE;

    return-object v0
.end method

.method public static values()[Lcom/android/server/OnePlusStandbyAnalyzer$WIFI_WAKEUP_TYPE;
    .locals 1

    sget-object v0, Lcom/android/server/OnePlusStandbyAnalyzer$WIFI_WAKEUP_TYPE;->$VALUES:[Lcom/android/server/OnePlusStandbyAnalyzer$WIFI_WAKEUP_TYPE;

    invoke-virtual {v0}, [Lcom/android/server/OnePlusStandbyAnalyzer$WIFI_WAKEUP_TYPE;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/server/OnePlusStandbyAnalyzer$WIFI_WAKEUP_TYPE;

    return-object v0
.end method
