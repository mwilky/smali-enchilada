.class public final enum Lcom/android/server/OnePlusStandbyAnalyzer$CRITERIA_S_TYPE;
.super Ljava/lang/Enum;
.source "OnePlusStandbyAnalyzer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/OnePlusStandbyAnalyzer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "CRITERIA_S_TYPE"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/server/OnePlusStandbyAnalyzer$CRITERIA_S_TYPE;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/server/OnePlusStandbyAnalyzer$CRITERIA_S_TYPE;

.field public static final enum HUC:Lcom/android/server/OnePlusStandbyAnalyzer$CRITERIA_S_TYPE;

.field public static final enum KWL:Lcom/android/server/OnePlusStandbyAnalyzer$CRITERIA_S_TYPE;

.field public static final enum MINOR:Lcom/android/server/OnePlusStandbyAnalyzer$CRITERIA_S_TYPE;

.field public static final enum RPM_SAD:Lcom/android/server/OnePlusStandbyAnalyzer$CRITERIA_S_TYPE;

.field public static final enum RPM_SLPI_SC:Lcom/android/server/OnePlusStandbyAnalyzer$CRITERIA_S_TYPE;

.field public static final enum RPM_TSLM_SEC:Lcom/android/server/OnePlusStandbyAnalyzer$CRITERIA_S_TYPE;

.field public static final enum SB:Lcom/android/server/OnePlusStandbyAnalyzer$CRITERIA_S_TYPE;

.field public static final enum WL:Lcom/android/server/OnePlusStandbyAnalyzer$CRITERIA_S_TYPE;

.field public static final enum WR:Lcom/android/server/OnePlusStandbyAnalyzer$CRITERIA_S_TYPE;


# direct methods
.method static constructor <clinit>()V
    .locals 11

    new-instance v0, Lcom/android/server/OnePlusStandbyAnalyzer$CRITERIA_S_TYPE;

    const-string v1, "WL"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/android/server/OnePlusStandbyAnalyzer$CRITERIA_S_TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/OnePlusStandbyAnalyzer$CRITERIA_S_TYPE;->WL:Lcom/android/server/OnePlusStandbyAnalyzer$CRITERIA_S_TYPE;

    new-instance v0, Lcom/android/server/OnePlusStandbyAnalyzer$CRITERIA_S_TYPE;

    const-string v1, "KWL"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/android/server/OnePlusStandbyAnalyzer$CRITERIA_S_TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/OnePlusStandbyAnalyzer$CRITERIA_S_TYPE;->KWL:Lcom/android/server/OnePlusStandbyAnalyzer$CRITERIA_S_TYPE;

    new-instance v0, Lcom/android/server/OnePlusStandbyAnalyzer$CRITERIA_S_TYPE;

    const-string v1, "WR"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/android/server/OnePlusStandbyAnalyzer$CRITERIA_S_TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/OnePlusStandbyAnalyzer$CRITERIA_S_TYPE;->WR:Lcom/android/server/OnePlusStandbyAnalyzer$CRITERIA_S_TYPE;

    new-instance v0, Lcom/android/server/OnePlusStandbyAnalyzer$CRITERIA_S_TYPE;

    const-string v1, "SB"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Lcom/android/server/OnePlusStandbyAnalyzer$CRITERIA_S_TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/OnePlusStandbyAnalyzer$CRITERIA_S_TYPE;->SB:Lcom/android/server/OnePlusStandbyAnalyzer$CRITERIA_S_TYPE;

    new-instance v0, Lcom/android/server/OnePlusStandbyAnalyzer$CRITERIA_S_TYPE;

    const-string v1, "HUC"

    const/4 v6, 0x4

    invoke-direct {v0, v1, v6}, Lcom/android/server/OnePlusStandbyAnalyzer$CRITERIA_S_TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/OnePlusStandbyAnalyzer$CRITERIA_S_TYPE;->HUC:Lcom/android/server/OnePlusStandbyAnalyzer$CRITERIA_S_TYPE;

    new-instance v0, Lcom/android/server/OnePlusStandbyAnalyzer$CRITERIA_S_TYPE;

    const-string v1, "MINOR"

    const/4 v7, 0x5

    invoke-direct {v0, v1, v7}, Lcom/android/server/OnePlusStandbyAnalyzer$CRITERIA_S_TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/OnePlusStandbyAnalyzer$CRITERIA_S_TYPE;->MINOR:Lcom/android/server/OnePlusStandbyAnalyzer$CRITERIA_S_TYPE;

    new-instance v0, Lcom/android/server/OnePlusStandbyAnalyzer$CRITERIA_S_TYPE;

    const-string v1, "RPM_TSLM_SEC"

    const/4 v8, 0x6

    invoke-direct {v0, v1, v8}, Lcom/android/server/OnePlusStandbyAnalyzer$CRITERIA_S_TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/OnePlusStandbyAnalyzer$CRITERIA_S_TYPE;->RPM_TSLM_SEC:Lcom/android/server/OnePlusStandbyAnalyzer$CRITERIA_S_TYPE;

    new-instance v0, Lcom/android/server/OnePlusStandbyAnalyzer$CRITERIA_S_TYPE;

    const-string v1, "RPM_SAD"

    const/4 v9, 0x7

    invoke-direct {v0, v1, v9}, Lcom/android/server/OnePlusStandbyAnalyzer$CRITERIA_S_TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/OnePlusStandbyAnalyzer$CRITERIA_S_TYPE;->RPM_SAD:Lcom/android/server/OnePlusStandbyAnalyzer$CRITERIA_S_TYPE;

    new-instance v0, Lcom/android/server/OnePlusStandbyAnalyzer$CRITERIA_S_TYPE;

    const-string v1, "RPM_SLPI_SC"

    const/16 v10, 0x8

    invoke-direct {v0, v1, v10}, Lcom/android/server/OnePlusStandbyAnalyzer$CRITERIA_S_TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/OnePlusStandbyAnalyzer$CRITERIA_S_TYPE;->RPM_SLPI_SC:Lcom/android/server/OnePlusStandbyAnalyzer$CRITERIA_S_TYPE;

    const/16 v0, 0x9

    new-array v0, v0, [Lcom/android/server/OnePlusStandbyAnalyzer$CRITERIA_S_TYPE;

    sget-object v1, Lcom/android/server/OnePlusStandbyAnalyzer$CRITERIA_S_TYPE;->WL:Lcom/android/server/OnePlusStandbyAnalyzer$CRITERIA_S_TYPE;

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/server/OnePlusStandbyAnalyzer$CRITERIA_S_TYPE;->KWL:Lcom/android/server/OnePlusStandbyAnalyzer$CRITERIA_S_TYPE;

    aput-object v1, v0, v3

    sget-object v1, Lcom/android/server/OnePlusStandbyAnalyzer$CRITERIA_S_TYPE;->WR:Lcom/android/server/OnePlusStandbyAnalyzer$CRITERIA_S_TYPE;

    aput-object v1, v0, v4

    sget-object v1, Lcom/android/server/OnePlusStandbyAnalyzer$CRITERIA_S_TYPE;->SB:Lcom/android/server/OnePlusStandbyAnalyzer$CRITERIA_S_TYPE;

    aput-object v1, v0, v5

    sget-object v1, Lcom/android/server/OnePlusStandbyAnalyzer$CRITERIA_S_TYPE;->HUC:Lcom/android/server/OnePlusStandbyAnalyzer$CRITERIA_S_TYPE;

    aput-object v1, v0, v6

    sget-object v1, Lcom/android/server/OnePlusStandbyAnalyzer$CRITERIA_S_TYPE;->MINOR:Lcom/android/server/OnePlusStandbyAnalyzer$CRITERIA_S_TYPE;

    aput-object v1, v0, v7

    sget-object v1, Lcom/android/server/OnePlusStandbyAnalyzer$CRITERIA_S_TYPE;->RPM_TSLM_SEC:Lcom/android/server/OnePlusStandbyAnalyzer$CRITERIA_S_TYPE;

    aput-object v1, v0, v8

    sget-object v1, Lcom/android/server/OnePlusStandbyAnalyzer$CRITERIA_S_TYPE;->RPM_SAD:Lcom/android/server/OnePlusStandbyAnalyzer$CRITERIA_S_TYPE;

    aput-object v1, v0, v9

    sget-object v1, Lcom/android/server/OnePlusStandbyAnalyzer$CRITERIA_S_TYPE;->RPM_SLPI_SC:Lcom/android/server/OnePlusStandbyAnalyzer$CRITERIA_S_TYPE;

    aput-object v1, v0, v10

    sput-object v0, Lcom/android/server/OnePlusStandbyAnalyzer$CRITERIA_S_TYPE;->$VALUES:[Lcom/android/server/OnePlusStandbyAnalyzer$CRITERIA_S_TYPE;

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

.method public static valueOf(Ljava/lang/String;)Lcom/android/server/OnePlusStandbyAnalyzer$CRITERIA_S_TYPE;
    .locals 1

    const-class v0, Lcom/android/server/OnePlusStandbyAnalyzer$CRITERIA_S_TYPE;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/server/OnePlusStandbyAnalyzer$CRITERIA_S_TYPE;

    return-object v0
.end method

.method public static values()[Lcom/android/server/OnePlusStandbyAnalyzer$CRITERIA_S_TYPE;
    .locals 1

    sget-object v0, Lcom/android/server/OnePlusStandbyAnalyzer$CRITERIA_S_TYPE;->$VALUES:[Lcom/android/server/OnePlusStandbyAnalyzer$CRITERIA_S_TYPE;

    invoke-virtual {v0}, [Lcom/android/server/OnePlusStandbyAnalyzer$CRITERIA_S_TYPE;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/server/OnePlusStandbyAnalyzer$CRITERIA_S_TYPE;

    return-object v0
.end method
