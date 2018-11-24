.class public final enum Lcom/android/server/OnePlusStandbyAnalyzer$PACKET_TYPE;
.super Ljava/lang/Enum;
.source "OnePlusStandbyAnalyzer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/OnePlusStandbyAnalyzer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "PACKET_TYPE"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/server/OnePlusStandbyAnalyzer$PACKET_TYPE;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/server/OnePlusStandbyAnalyzer$PACKET_TYPE;

.field public static final enum NETWORK_MOBILE_RX_DATA:Lcom/android/server/OnePlusStandbyAnalyzer$PACKET_TYPE;

.field public static final enum NETWORK_MOBILE_TX_DATA:Lcom/android/server/OnePlusStandbyAnalyzer$PACKET_TYPE;

.field public static final enum NETWORK_WIFI_RX_DATA:Lcom/android/server/OnePlusStandbyAnalyzer$PACKET_TYPE;

.field public static final enum NETWORK_WIFI_TX_DATA:Lcom/android/server/OnePlusStandbyAnalyzer$PACKET_TYPE;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    new-instance v0, Lcom/android/server/OnePlusStandbyAnalyzer$PACKET_TYPE;

    const-string v1, "NETWORK_MOBILE_RX_DATA"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/android/server/OnePlusStandbyAnalyzer$PACKET_TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/OnePlusStandbyAnalyzer$PACKET_TYPE;->NETWORK_MOBILE_RX_DATA:Lcom/android/server/OnePlusStandbyAnalyzer$PACKET_TYPE;

    new-instance v0, Lcom/android/server/OnePlusStandbyAnalyzer$PACKET_TYPE;

    const-string v1, "NETWORK_MOBILE_TX_DATA"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/android/server/OnePlusStandbyAnalyzer$PACKET_TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/OnePlusStandbyAnalyzer$PACKET_TYPE;->NETWORK_MOBILE_TX_DATA:Lcom/android/server/OnePlusStandbyAnalyzer$PACKET_TYPE;

    new-instance v0, Lcom/android/server/OnePlusStandbyAnalyzer$PACKET_TYPE;

    const-string v1, "NETWORK_WIFI_RX_DATA"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/android/server/OnePlusStandbyAnalyzer$PACKET_TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/OnePlusStandbyAnalyzer$PACKET_TYPE;->NETWORK_WIFI_RX_DATA:Lcom/android/server/OnePlusStandbyAnalyzer$PACKET_TYPE;

    new-instance v0, Lcom/android/server/OnePlusStandbyAnalyzer$PACKET_TYPE;

    const-string v1, "NETWORK_WIFI_TX_DATA"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Lcom/android/server/OnePlusStandbyAnalyzer$PACKET_TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/OnePlusStandbyAnalyzer$PACKET_TYPE;->NETWORK_WIFI_TX_DATA:Lcom/android/server/OnePlusStandbyAnalyzer$PACKET_TYPE;

    const/4 v0, 0x4

    new-array v0, v0, [Lcom/android/server/OnePlusStandbyAnalyzer$PACKET_TYPE;

    sget-object v1, Lcom/android/server/OnePlusStandbyAnalyzer$PACKET_TYPE;->NETWORK_MOBILE_RX_DATA:Lcom/android/server/OnePlusStandbyAnalyzer$PACKET_TYPE;

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/server/OnePlusStandbyAnalyzer$PACKET_TYPE;->NETWORK_MOBILE_TX_DATA:Lcom/android/server/OnePlusStandbyAnalyzer$PACKET_TYPE;

    aput-object v1, v0, v3

    sget-object v1, Lcom/android/server/OnePlusStandbyAnalyzer$PACKET_TYPE;->NETWORK_WIFI_RX_DATA:Lcom/android/server/OnePlusStandbyAnalyzer$PACKET_TYPE;

    aput-object v1, v0, v4

    sget-object v1, Lcom/android/server/OnePlusStandbyAnalyzer$PACKET_TYPE;->NETWORK_WIFI_TX_DATA:Lcom/android/server/OnePlusStandbyAnalyzer$PACKET_TYPE;

    aput-object v1, v0, v5

    sput-object v0, Lcom/android/server/OnePlusStandbyAnalyzer$PACKET_TYPE;->$VALUES:[Lcom/android/server/OnePlusStandbyAnalyzer$PACKET_TYPE;

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

.method public static valueOf(Ljava/lang/String;)Lcom/android/server/OnePlusStandbyAnalyzer$PACKET_TYPE;
    .locals 1

    const-class v0, Lcom/android/server/OnePlusStandbyAnalyzer$PACKET_TYPE;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/server/OnePlusStandbyAnalyzer$PACKET_TYPE;

    return-object v0
.end method

.method public static values()[Lcom/android/server/OnePlusStandbyAnalyzer$PACKET_TYPE;
    .locals 1

    sget-object v0, Lcom/android/server/OnePlusStandbyAnalyzer$PACKET_TYPE;->$VALUES:[Lcom/android/server/OnePlusStandbyAnalyzer$PACKET_TYPE;

    invoke-virtual {v0}, [Lcom/android/server/OnePlusStandbyAnalyzer$PACKET_TYPE;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/server/OnePlusStandbyAnalyzer$PACKET_TYPE;

    return-object v0
.end method
