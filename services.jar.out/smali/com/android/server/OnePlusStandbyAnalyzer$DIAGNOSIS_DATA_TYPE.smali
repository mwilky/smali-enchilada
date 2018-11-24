.class public final enum Lcom/android/server/OnePlusStandbyAnalyzer$DIAGNOSIS_DATA_TYPE;
.super Ljava/lang/Enum;
.source "OnePlusStandbyAnalyzer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/OnePlusStandbyAnalyzer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "DIAGNOSIS_DATA_TYPE"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/server/OnePlusStandbyAnalyzer$DIAGNOSIS_DATA_TYPE;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/server/OnePlusStandbyAnalyzer$DIAGNOSIS_DATA_TYPE;

.field public static final enum AC:Lcom/android/server/OnePlusStandbyAnalyzer$DIAGNOSIS_DATA_TYPE;

.field public static final enum CRI:Lcom/android/server/OnePlusStandbyAnalyzer$DIAGNOSIS_DATA_TYPE;

.field public static final enum CRP:Lcom/android/server/OnePlusStandbyAnalyzer$DIAGNOSIS_DATA_TYPE;

.field public static final enum DP:Lcom/android/server/OnePlusStandbyAnalyzer$DIAGNOSIS_DATA_TYPE;

.field public static final enum EVDI:Lcom/android/server/OnePlusStandbyAnalyzer$DIAGNOSIS_DATA_TYPE;

.field public static final enum KWLP:Lcom/android/server/OnePlusStandbyAnalyzer$DIAGNOSIS_DATA_TYPE;

.field public static final enum MIN:Lcom/android/server/OnePlusStandbyAnalyzer$DIAGNOSIS_DATA_TYPE;

.field public static final enum RPM:Lcom/android/server/OnePlusStandbyAnalyzer$DIAGNOSIS_DATA_TYPE;

.field public static final enum SBHR:Lcom/android/server/OnePlusStandbyAnalyzer$DIAGNOSIS_DATA_TYPE;

.field public static final enum SBP:Lcom/android/server/OnePlusStandbyAnalyzer$DIAGNOSIS_DATA_TYPE;

.field public static final enum UCP:Lcom/android/server/OnePlusStandbyAnalyzer$DIAGNOSIS_DATA_TYPE;

.field public static final enum VER:Lcom/android/server/OnePlusStandbyAnalyzer$DIAGNOSIS_DATA_TYPE;

.field public static final enum WLP:Lcom/android/server/OnePlusStandbyAnalyzer$DIAGNOSIS_DATA_TYPE;

.field public static final enum WR:Lcom/android/server/OnePlusStandbyAnalyzer$DIAGNOSIS_DATA_TYPE;


# direct methods
.method static constructor <clinit>()V
    .locals 16

    new-instance v0, Lcom/android/server/OnePlusStandbyAnalyzer$DIAGNOSIS_DATA_TYPE;

    const-string v1, "VER"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/android/server/OnePlusStandbyAnalyzer$DIAGNOSIS_DATA_TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/OnePlusStandbyAnalyzer$DIAGNOSIS_DATA_TYPE;->VER:Lcom/android/server/OnePlusStandbyAnalyzer$DIAGNOSIS_DATA_TYPE;

    new-instance v0, Lcom/android/server/OnePlusStandbyAnalyzer$DIAGNOSIS_DATA_TYPE;

    const-string v1, "SBHR"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/android/server/OnePlusStandbyAnalyzer$DIAGNOSIS_DATA_TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/OnePlusStandbyAnalyzer$DIAGNOSIS_DATA_TYPE;->SBHR:Lcom/android/server/OnePlusStandbyAnalyzer$DIAGNOSIS_DATA_TYPE;

    new-instance v0, Lcom/android/server/OnePlusStandbyAnalyzer$DIAGNOSIS_DATA_TYPE;

    const-string v1, "EVDI"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/android/server/OnePlusStandbyAnalyzer$DIAGNOSIS_DATA_TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/OnePlusStandbyAnalyzer$DIAGNOSIS_DATA_TYPE;->EVDI:Lcom/android/server/OnePlusStandbyAnalyzer$DIAGNOSIS_DATA_TYPE;

    new-instance v0, Lcom/android/server/OnePlusStandbyAnalyzer$DIAGNOSIS_DATA_TYPE;

    const-string v1, "DP"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Lcom/android/server/OnePlusStandbyAnalyzer$DIAGNOSIS_DATA_TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/OnePlusStandbyAnalyzer$DIAGNOSIS_DATA_TYPE;->DP:Lcom/android/server/OnePlusStandbyAnalyzer$DIAGNOSIS_DATA_TYPE;

    new-instance v0, Lcom/android/server/OnePlusStandbyAnalyzer$DIAGNOSIS_DATA_TYPE;

    const-string v1, "AC"

    const/4 v6, 0x4

    invoke-direct {v0, v1, v6}, Lcom/android/server/OnePlusStandbyAnalyzer$DIAGNOSIS_DATA_TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/OnePlusStandbyAnalyzer$DIAGNOSIS_DATA_TYPE;->AC:Lcom/android/server/OnePlusStandbyAnalyzer$DIAGNOSIS_DATA_TYPE;

    new-instance v0, Lcom/android/server/OnePlusStandbyAnalyzer$DIAGNOSIS_DATA_TYPE;

    const-string v1, "CRI"

    const/4 v7, 0x5

    invoke-direct {v0, v1, v7}, Lcom/android/server/OnePlusStandbyAnalyzer$DIAGNOSIS_DATA_TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/OnePlusStandbyAnalyzer$DIAGNOSIS_DATA_TYPE;->CRI:Lcom/android/server/OnePlusStandbyAnalyzer$DIAGNOSIS_DATA_TYPE;

    new-instance v0, Lcom/android/server/OnePlusStandbyAnalyzer$DIAGNOSIS_DATA_TYPE;

    const-string v1, "MIN"

    const/4 v8, 0x6

    invoke-direct {v0, v1, v8}, Lcom/android/server/OnePlusStandbyAnalyzer$DIAGNOSIS_DATA_TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/OnePlusStandbyAnalyzer$DIAGNOSIS_DATA_TYPE;->MIN:Lcom/android/server/OnePlusStandbyAnalyzer$DIAGNOSIS_DATA_TYPE;

    new-instance v0, Lcom/android/server/OnePlusStandbyAnalyzer$DIAGNOSIS_DATA_TYPE;

    const-string v1, "WLP"

    const/4 v9, 0x7

    invoke-direct {v0, v1, v9}, Lcom/android/server/OnePlusStandbyAnalyzer$DIAGNOSIS_DATA_TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/OnePlusStandbyAnalyzer$DIAGNOSIS_DATA_TYPE;->WLP:Lcom/android/server/OnePlusStandbyAnalyzer$DIAGNOSIS_DATA_TYPE;

    new-instance v0, Lcom/android/server/OnePlusStandbyAnalyzer$DIAGNOSIS_DATA_TYPE;

    const-string v1, "CRP"

    const/16 v10, 0x8

    invoke-direct {v0, v1, v10}, Lcom/android/server/OnePlusStandbyAnalyzer$DIAGNOSIS_DATA_TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/OnePlusStandbyAnalyzer$DIAGNOSIS_DATA_TYPE;->CRP:Lcom/android/server/OnePlusStandbyAnalyzer$DIAGNOSIS_DATA_TYPE;

    new-instance v0, Lcom/android/server/OnePlusStandbyAnalyzer$DIAGNOSIS_DATA_TYPE;

    const-string v1, "KWLP"

    const/16 v11, 0x9

    invoke-direct {v0, v1, v11}, Lcom/android/server/OnePlusStandbyAnalyzer$DIAGNOSIS_DATA_TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/OnePlusStandbyAnalyzer$DIAGNOSIS_DATA_TYPE;->KWLP:Lcom/android/server/OnePlusStandbyAnalyzer$DIAGNOSIS_DATA_TYPE;

    new-instance v0, Lcom/android/server/OnePlusStandbyAnalyzer$DIAGNOSIS_DATA_TYPE;

    const-string v1, "WR"

    const/16 v12, 0xa

    invoke-direct {v0, v1, v12}, Lcom/android/server/OnePlusStandbyAnalyzer$DIAGNOSIS_DATA_TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/OnePlusStandbyAnalyzer$DIAGNOSIS_DATA_TYPE;->WR:Lcom/android/server/OnePlusStandbyAnalyzer$DIAGNOSIS_DATA_TYPE;

    new-instance v0, Lcom/android/server/OnePlusStandbyAnalyzer$DIAGNOSIS_DATA_TYPE;

    const-string v1, "SBP"

    const/16 v13, 0xb

    invoke-direct {v0, v1, v13}, Lcom/android/server/OnePlusStandbyAnalyzer$DIAGNOSIS_DATA_TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/OnePlusStandbyAnalyzer$DIAGNOSIS_DATA_TYPE;->SBP:Lcom/android/server/OnePlusStandbyAnalyzer$DIAGNOSIS_DATA_TYPE;

    new-instance v0, Lcom/android/server/OnePlusStandbyAnalyzer$DIAGNOSIS_DATA_TYPE;

    const-string v1, "UCP"

    const/16 v14, 0xc

    invoke-direct {v0, v1, v14}, Lcom/android/server/OnePlusStandbyAnalyzer$DIAGNOSIS_DATA_TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/OnePlusStandbyAnalyzer$DIAGNOSIS_DATA_TYPE;->UCP:Lcom/android/server/OnePlusStandbyAnalyzer$DIAGNOSIS_DATA_TYPE;

    new-instance v0, Lcom/android/server/OnePlusStandbyAnalyzer$DIAGNOSIS_DATA_TYPE;

    const-string v1, "RPM"

    const/16 v15, 0xd

    invoke-direct {v0, v1, v15}, Lcom/android/server/OnePlusStandbyAnalyzer$DIAGNOSIS_DATA_TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/OnePlusStandbyAnalyzer$DIAGNOSIS_DATA_TYPE;->RPM:Lcom/android/server/OnePlusStandbyAnalyzer$DIAGNOSIS_DATA_TYPE;

    const/16 v0, 0xe

    new-array v0, v0, [Lcom/android/server/OnePlusStandbyAnalyzer$DIAGNOSIS_DATA_TYPE;

    sget-object v1, Lcom/android/server/OnePlusStandbyAnalyzer$DIAGNOSIS_DATA_TYPE;->VER:Lcom/android/server/OnePlusStandbyAnalyzer$DIAGNOSIS_DATA_TYPE;

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/server/OnePlusStandbyAnalyzer$DIAGNOSIS_DATA_TYPE;->SBHR:Lcom/android/server/OnePlusStandbyAnalyzer$DIAGNOSIS_DATA_TYPE;

    aput-object v1, v0, v3

    sget-object v1, Lcom/android/server/OnePlusStandbyAnalyzer$DIAGNOSIS_DATA_TYPE;->EVDI:Lcom/android/server/OnePlusStandbyAnalyzer$DIAGNOSIS_DATA_TYPE;

    aput-object v1, v0, v4

    sget-object v1, Lcom/android/server/OnePlusStandbyAnalyzer$DIAGNOSIS_DATA_TYPE;->DP:Lcom/android/server/OnePlusStandbyAnalyzer$DIAGNOSIS_DATA_TYPE;

    aput-object v1, v0, v5

    sget-object v1, Lcom/android/server/OnePlusStandbyAnalyzer$DIAGNOSIS_DATA_TYPE;->AC:Lcom/android/server/OnePlusStandbyAnalyzer$DIAGNOSIS_DATA_TYPE;

    aput-object v1, v0, v6

    sget-object v1, Lcom/android/server/OnePlusStandbyAnalyzer$DIAGNOSIS_DATA_TYPE;->CRI:Lcom/android/server/OnePlusStandbyAnalyzer$DIAGNOSIS_DATA_TYPE;

    aput-object v1, v0, v7

    sget-object v1, Lcom/android/server/OnePlusStandbyAnalyzer$DIAGNOSIS_DATA_TYPE;->MIN:Lcom/android/server/OnePlusStandbyAnalyzer$DIAGNOSIS_DATA_TYPE;

    aput-object v1, v0, v8

    sget-object v1, Lcom/android/server/OnePlusStandbyAnalyzer$DIAGNOSIS_DATA_TYPE;->WLP:Lcom/android/server/OnePlusStandbyAnalyzer$DIAGNOSIS_DATA_TYPE;

    aput-object v1, v0, v9

    sget-object v1, Lcom/android/server/OnePlusStandbyAnalyzer$DIAGNOSIS_DATA_TYPE;->CRP:Lcom/android/server/OnePlusStandbyAnalyzer$DIAGNOSIS_DATA_TYPE;

    aput-object v1, v0, v10

    sget-object v1, Lcom/android/server/OnePlusStandbyAnalyzer$DIAGNOSIS_DATA_TYPE;->KWLP:Lcom/android/server/OnePlusStandbyAnalyzer$DIAGNOSIS_DATA_TYPE;

    aput-object v1, v0, v11

    sget-object v1, Lcom/android/server/OnePlusStandbyAnalyzer$DIAGNOSIS_DATA_TYPE;->WR:Lcom/android/server/OnePlusStandbyAnalyzer$DIAGNOSIS_DATA_TYPE;

    aput-object v1, v0, v12

    sget-object v1, Lcom/android/server/OnePlusStandbyAnalyzer$DIAGNOSIS_DATA_TYPE;->SBP:Lcom/android/server/OnePlusStandbyAnalyzer$DIAGNOSIS_DATA_TYPE;

    aput-object v1, v0, v13

    sget-object v1, Lcom/android/server/OnePlusStandbyAnalyzer$DIAGNOSIS_DATA_TYPE;->UCP:Lcom/android/server/OnePlusStandbyAnalyzer$DIAGNOSIS_DATA_TYPE;

    aput-object v1, v0, v14

    sget-object v1, Lcom/android/server/OnePlusStandbyAnalyzer$DIAGNOSIS_DATA_TYPE;->RPM:Lcom/android/server/OnePlusStandbyAnalyzer$DIAGNOSIS_DATA_TYPE;

    aput-object v1, v0, v15

    sput-object v0, Lcom/android/server/OnePlusStandbyAnalyzer$DIAGNOSIS_DATA_TYPE;->$VALUES:[Lcom/android/server/OnePlusStandbyAnalyzer$DIAGNOSIS_DATA_TYPE;

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

.method public static valueOf(Ljava/lang/String;)Lcom/android/server/OnePlusStandbyAnalyzer$DIAGNOSIS_DATA_TYPE;
    .locals 1

    const-class v0, Lcom/android/server/OnePlusStandbyAnalyzer$DIAGNOSIS_DATA_TYPE;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/server/OnePlusStandbyAnalyzer$DIAGNOSIS_DATA_TYPE;

    return-object v0
.end method

.method public static values()[Lcom/android/server/OnePlusStandbyAnalyzer$DIAGNOSIS_DATA_TYPE;
    .locals 1

    sget-object v0, Lcom/android/server/OnePlusStandbyAnalyzer$DIAGNOSIS_DATA_TYPE;->$VALUES:[Lcom/android/server/OnePlusStandbyAnalyzer$DIAGNOSIS_DATA_TYPE;

    invoke-virtual {v0}, [Lcom/android/server/OnePlusStandbyAnalyzer$DIAGNOSIS_DATA_TYPE;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/server/OnePlusStandbyAnalyzer$DIAGNOSIS_DATA_TYPE;

    return-object v0
.end method
