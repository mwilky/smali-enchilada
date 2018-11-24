.class public final enum Lcom/android/server/am/OnePlusBGController$DRAIN_TYPE;
.super Ljava/lang/Enum;
.source "OnePlusBGController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/OnePlusBGController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "DRAIN_TYPE"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/server/am/OnePlusBGController$DRAIN_TYPE;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/server/am/OnePlusBGController$DRAIN_TYPE;

.field public static final enum BLUETOOTH:Lcom/android/server/am/OnePlusBGController$DRAIN_TYPE;

.field public static final enum CAMERA:Lcom/android/server/am/OnePlusBGController$DRAIN_TYPE;

.field public static final enum CPU:Lcom/android/server/am/OnePlusBGController$DRAIN_TYPE;

.field public static final enum FLASHLIGHT:Lcom/android/server/am/OnePlusBGController$DRAIN_TYPE;

.field public static final enum GPS:Lcom/android/server/am/OnePlusBGController$DRAIN_TYPE;

.field public static final enum MEDIA:Lcom/android/server/am/OnePlusBGController$DRAIN_TYPE;

.field public static final enum MOBILERADIO:Lcom/android/server/am/OnePlusBGController$DRAIN_TYPE;

.field public static final enum SENSOR:Lcom/android/server/am/OnePlusBGController$DRAIN_TYPE;

.field public static final enum UNKNOWN:Lcom/android/server/am/OnePlusBGController$DRAIN_TYPE;

.field public static final enum WAKELOCK:Lcom/android/server/am/OnePlusBGController$DRAIN_TYPE;

.field public static final enum WIFI:Lcom/android/server/am/OnePlusBGController$DRAIN_TYPE;


# direct methods
.method static constructor <clinit>()V
    .locals 13

    new-instance v0, Lcom/android/server/am/OnePlusBGController$DRAIN_TYPE;

    const-string v1, "UNKNOWN"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/android/server/am/OnePlusBGController$DRAIN_TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/am/OnePlusBGController$DRAIN_TYPE;->UNKNOWN:Lcom/android/server/am/OnePlusBGController$DRAIN_TYPE;

    new-instance v0, Lcom/android/server/am/OnePlusBGController$DRAIN_TYPE;

    const-string v1, "CPU"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/android/server/am/OnePlusBGController$DRAIN_TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/am/OnePlusBGController$DRAIN_TYPE;->CPU:Lcom/android/server/am/OnePlusBGController$DRAIN_TYPE;

    new-instance v0, Lcom/android/server/am/OnePlusBGController$DRAIN_TYPE;

    const-string v1, "WAKELOCK"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/android/server/am/OnePlusBGController$DRAIN_TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/am/OnePlusBGController$DRAIN_TYPE;->WAKELOCK:Lcom/android/server/am/OnePlusBGController$DRAIN_TYPE;

    new-instance v0, Lcom/android/server/am/OnePlusBGController$DRAIN_TYPE;

    const-string v1, "MOBILERADIO"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Lcom/android/server/am/OnePlusBGController$DRAIN_TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/am/OnePlusBGController$DRAIN_TYPE;->MOBILERADIO:Lcom/android/server/am/OnePlusBGController$DRAIN_TYPE;

    new-instance v0, Lcom/android/server/am/OnePlusBGController$DRAIN_TYPE;

    const-string v1, "WIFI"

    const/4 v6, 0x4

    invoke-direct {v0, v1, v6}, Lcom/android/server/am/OnePlusBGController$DRAIN_TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/am/OnePlusBGController$DRAIN_TYPE;->WIFI:Lcom/android/server/am/OnePlusBGController$DRAIN_TYPE;

    new-instance v0, Lcom/android/server/am/OnePlusBGController$DRAIN_TYPE;

    const-string v1, "BLUETOOTH"

    const/4 v7, 0x5

    invoke-direct {v0, v1, v7}, Lcom/android/server/am/OnePlusBGController$DRAIN_TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/am/OnePlusBGController$DRAIN_TYPE;->BLUETOOTH:Lcom/android/server/am/OnePlusBGController$DRAIN_TYPE;

    new-instance v0, Lcom/android/server/am/OnePlusBGController$DRAIN_TYPE;

    const-string v1, "GPS"

    const/4 v8, 0x6

    invoke-direct {v0, v1, v8}, Lcom/android/server/am/OnePlusBGController$DRAIN_TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/am/OnePlusBGController$DRAIN_TYPE;->GPS:Lcom/android/server/am/OnePlusBGController$DRAIN_TYPE;

    new-instance v0, Lcom/android/server/am/OnePlusBGController$DRAIN_TYPE;

    const-string v1, "SENSOR"

    const/4 v9, 0x7

    invoke-direct {v0, v1, v9}, Lcom/android/server/am/OnePlusBGController$DRAIN_TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/am/OnePlusBGController$DRAIN_TYPE;->SENSOR:Lcom/android/server/am/OnePlusBGController$DRAIN_TYPE;

    new-instance v0, Lcom/android/server/am/OnePlusBGController$DRAIN_TYPE;

    const-string v1, "CAMERA"

    const/16 v10, 0x8

    invoke-direct {v0, v1, v10}, Lcom/android/server/am/OnePlusBGController$DRAIN_TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/am/OnePlusBGController$DRAIN_TYPE;->CAMERA:Lcom/android/server/am/OnePlusBGController$DRAIN_TYPE;

    new-instance v0, Lcom/android/server/am/OnePlusBGController$DRAIN_TYPE;

    const-string v1, "FLASHLIGHT"

    const/16 v11, 0x9

    invoke-direct {v0, v1, v11}, Lcom/android/server/am/OnePlusBGController$DRAIN_TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/am/OnePlusBGController$DRAIN_TYPE;->FLASHLIGHT:Lcom/android/server/am/OnePlusBGController$DRAIN_TYPE;

    new-instance v0, Lcom/android/server/am/OnePlusBGController$DRAIN_TYPE;

    const-string v1, "MEDIA"

    const/16 v12, 0xa

    invoke-direct {v0, v1, v12}, Lcom/android/server/am/OnePlusBGController$DRAIN_TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/am/OnePlusBGController$DRAIN_TYPE;->MEDIA:Lcom/android/server/am/OnePlusBGController$DRAIN_TYPE;

    const/16 v0, 0xb

    new-array v0, v0, [Lcom/android/server/am/OnePlusBGController$DRAIN_TYPE;

    sget-object v1, Lcom/android/server/am/OnePlusBGController$DRAIN_TYPE;->UNKNOWN:Lcom/android/server/am/OnePlusBGController$DRAIN_TYPE;

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/server/am/OnePlusBGController$DRAIN_TYPE;->CPU:Lcom/android/server/am/OnePlusBGController$DRAIN_TYPE;

    aput-object v1, v0, v3

    sget-object v1, Lcom/android/server/am/OnePlusBGController$DRAIN_TYPE;->WAKELOCK:Lcom/android/server/am/OnePlusBGController$DRAIN_TYPE;

    aput-object v1, v0, v4

    sget-object v1, Lcom/android/server/am/OnePlusBGController$DRAIN_TYPE;->MOBILERADIO:Lcom/android/server/am/OnePlusBGController$DRAIN_TYPE;

    aput-object v1, v0, v5

    sget-object v1, Lcom/android/server/am/OnePlusBGController$DRAIN_TYPE;->WIFI:Lcom/android/server/am/OnePlusBGController$DRAIN_TYPE;

    aput-object v1, v0, v6

    sget-object v1, Lcom/android/server/am/OnePlusBGController$DRAIN_TYPE;->BLUETOOTH:Lcom/android/server/am/OnePlusBGController$DRAIN_TYPE;

    aput-object v1, v0, v7

    sget-object v1, Lcom/android/server/am/OnePlusBGController$DRAIN_TYPE;->GPS:Lcom/android/server/am/OnePlusBGController$DRAIN_TYPE;

    aput-object v1, v0, v8

    sget-object v1, Lcom/android/server/am/OnePlusBGController$DRAIN_TYPE;->SENSOR:Lcom/android/server/am/OnePlusBGController$DRAIN_TYPE;

    aput-object v1, v0, v9

    sget-object v1, Lcom/android/server/am/OnePlusBGController$DRAIN_TYPE;->CAMERA:Lcom/android/server/am/OnePlusBGController$DRAIN_TYPE;

    aput-object v1, v0, v10

    sget-object v1, Lcom/android/server/am/OnePlusBGController$DRAIN_TYPE;->FLASHLIGHT:Lcom/android/server/am/OnePlusBGController$DRAIN_TYPE;

    aput-object v1, v0, v11

    sget-object v1, Lcom/android/server/am/OnePlusBGController$DRAIN_TYPE;->MEDIA:Lcom/android/server/am/OnePlusBGController$DRAIN_TYPE;

    aput-object v1, v0, v12

    sput-object v0, Lcom/android/server/am/OnePlusBGController$DRAIN_TYPE;->$VALUES:[Lcom/android/server/am/OnePlusBGController$DRAIN_TYPE;

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

.method public static valueOf(Ljava/lang/String;)Lcom/android/server/am/OnePlusBGController$DRAIN_TYPE;
    .locals 1

    const-class v0, Lcom/android/server/am/OnePlusBGController$DRAIN_TYPE;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/OnePlusBGController$DRAIN_TYPE;

    return-object v0
.end method

.method public static values()[Lcom/android/server/am/OnePlusBGController$DRAIN_TYPE;
    .locals 1

    sget-object v0, Lcom/android/server/am/OnePlusBGController$DRAIN_TYPE;->$VALUES:[Lcom/android/server/am/OnePlusBGController$DRAIN_TYPE;

    invoke-virtual {v0}, [Lcom/android/server/am/OnePlusBGController$DRAIN_TYPE;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/server/am/OnePlusBGController$DRAIN_TYPE;

    return-object v0
.end method
