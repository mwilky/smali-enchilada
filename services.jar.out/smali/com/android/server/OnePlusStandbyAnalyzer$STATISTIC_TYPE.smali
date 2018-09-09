.class public final enum Lcom/android/server/OnePlusStandbyAnalyzer$STATISTIC_TYPE;
.super Ljava/lang/Enum;
.source "OnePlusStandbyAnalyzer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/OnePlusStandbyAnalyzer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "STATISTIC_TYPE"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/server/OnePlusStandbyAnalyzer$STATISTIC_TYPE;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/server/OnePlusStandbyAnalyzer$STATISTIC_TYPE;

.field public static final enum KWL_WR:Lcom/android/server/OnePlusStandbyAnalyzer$STATISTIC_TYPE;

.field public static final enum SIPPER:Lcom/android/server/OnePlusStandbyAnalyzer$STATISTIC_TYPE;

.field public static final enum WAKELOCK_WAKEUP:Lcom/android/server/OnePlusStandbyAnalyzer$STATISTIC_TYPE;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 97
    new-instance v0, Lcom/android/server/OnePlusStandbyAnalyzer$STATISTIC_TYPE;

    const-string v1, "SIPPER"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/android/server/OnePlusStandbyAnalyzer$STATISTIC_TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/OnePlusStandbyAnalyzer$STATISTIC_TYPE;->SIPPER:Lcom/android/server/OnePlusStandbyAnalyzer$STATISTIC_TYPE;

    .line 98
    new-instance v0, Lcom/android/server/OnePlusStandbyAnalyzer$STATISTIC_TYPE;

    const-string v1, "WAKELOCK_WAKEUP"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/android/server/OnePlusStandbyAnalyzer$STATISTIC_TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/OnePlusStandbyAnalyzer$STATISTIC_TYPE;->WAKELOCK_WAKEUP:Lcom/android/server/OnePlusStandbyAnalyzer$STATISTIC_TYPE;

    .line 99
    new-instance v0, Lcom/android/server/OnePlusStandbyAnalyzer$STATISTIC_TYPE;

    const-string v1, "KWL_WR"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/android/server/OnePlusStandbyAnalyzer$STATISTIC_TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/OnePlusStandbyAnalyzer$STATISTIC_TYPE;->KWL_WR:Lcom/android/server/OnePlusStandbyAnalyzer$STATISTIC_TYPE;

    .line 96
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/android/server/OnePlusStandbyAnalyzer$STATISTIC_TYPE;

    sget-object v1, Lcom/android/server/OnePlusStandbyAnalyzer$STATISTIC_TYPE;->SIPPER:Lcom/android/server/OnePlusStandbyAnalyzer$STATISTIC_TYPE;

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/server/OnePlusStandbyAnalyzer$STATISTIC_TYPE;->WAKELOCK_WAKEUP:Lcom/android/server/OnePlusStandbyAnalyzer$STATISTIC_TYPE;

    aput-object v1, v0, v3

    sget-object v1, Lcom/android/server/OnePlusStandbyAnalyzer$STATISTIC_TYPE;->KWL_WR:Lcom/android/server/OnePlusStandbyAnalyzer$STATISTIC_TYPE;

    aput-object v1, v0, v4

    sput-object v0, Lcom/android/server/OnePlusStandbyAnalyzer$STATISTIC_TYPE;->$VALUES:[Lcom/android/server/OnePlusStandbyAnalyzer$STATISTIC_TYPE;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 96
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/server/OnePlusStandbyAnalyzer$STATISTIC_TYPE;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 96
    const-class v0, Lcom/android/server/OnePlusStandbyAnalyzer$STATISTIC_TYPE;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/server/OnePlusStandbyAnalyzer$STATISTIC_TYPE;

    return-object v0
.end method

.method public static values()[Lcom/android/server/OnePlusStandbyAnalyzer$STATISTIC_TYPE;
    .locals 1

    .line 96
    sget-object v0, Lcom/android/server/OnePlusStandbyAnalyzer$STATISTIC_TYPE;->$VALUES:[Lcom/android/server/OnePlusStandbyAnalyzer$STATISTIC_TYPE;

    invoke-virtual {v0}, [Lcom/android/server/OnePlusStandbyAnalyzer$STATISTIC_TYPE;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/server/OnePlusStandbyAnalyzer$STATISTIC_TYPE;

    return-object v0
.end method
