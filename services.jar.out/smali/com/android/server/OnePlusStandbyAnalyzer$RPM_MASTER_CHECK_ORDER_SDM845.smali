.class public final enum Lcom/android/server/OnePlusStandbyAnalyzer$RPM_MASTER_CHECK_ORDER_SDM845;
.super Ljava/lang/Enum;
.source "OnePlusStandbyAnalyzer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/OnePlusStandbyAnalyzer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "RPM_MASTER_CHECK_ORDER_SDM845"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/server/OnePlusStandbyAnalyzer$RPM_MASTER_CHECK_ORDER_SDM845;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/server/OnePlusStandbyAnalyzer$RPM_MASTER_CHECK_ORDER_SDM845;

.field public static final enum ADSP:Lcom/android/server/OnePlusStandbyAnalyzer$RPM_MASTER_CHECK_ORDER_SDM845;

.field public static final enum CDSP:Lcom/android/server/OnePlusStandbyAnalyzer$RPM_MASTER_CHECK_ORDER_SDM845;

.field public static final enum MPSS:Lcom/android/server/OnePlusStandbyAnalyzer$RPM_MASTER_CHECK_ORDER_SDM845;

.field public static final enum SLPI:Lcom/android/server/OnePlusStandbyAnalyzer$RPM_MASTER_CHECK_ORDER_SDM845;


# instance fields
.field private value:I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    new-instance v0, Lcom/android/server/OnePlusStandbyAnalyzer$RPM_MASTER_CHECK_ORDER_SDM845;

    const-string v1, "CDSP"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/android/server/OnePlusStandbyAnalyzer$RPM_MASTER_CHECK_ORDER_SDM845;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/server/OnePlusStandbyAnalyzer$RPM_MASTER_CHECK_ORDER_SDM845;->CDSP:Lcom/android/server/OnePlusStandbyAnalyzer$RPM_MASTER_CHECK_ORDER_SDM845;

    new-instance v0, Lcom/android/server/OnePlusStandbyAnalyzer$RPM_MASTER_CHECK_ORDER_SDM845;

    const-string v1, "ADSP"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3, v3}, Lcom/android/server/OnePlusStandbyAnalyzer$RPM_MASTER_CHECK_ORDER_SDM845;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/server/OnePlusStandbyAnalyzer$RPM_MASTER_CHECK_ORDER_SDM845;->ADSP:Lcom/android/server/OnePlusStandbyAnalyzer$RPM_MASTER_CHECK_ORDER_SDM845;

    new-instance v0, Lcom/android/server/OnePlusStandbyAnalyzer$RPM_MASTER_CHECK_ORDER_SDM845;

    const-string v1, "MPSS"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4, v4}, Lcom/android/server/OnePlusStandbyAnalyzer$RPM_MASTER_CHECK_ORDER_SDM845;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/server/OnePlusStandbyAnalyzer$RPM_MASTER_CHECK_ORDER_SDM845;->MPSS:Lcom/android/server/OnePlusStandbyAnalyzer$RPM_MASTER_CHECK_ORDER_SDM845;

    new-instance v0, Lcom/android/server/OnePlusStandbyAnalyzer$RPM_MASTER_CHECK_ORDER_SDM845;

    const-string v1, "SLPI"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5, v5}, Lcom/android/server/OnePlusStandbyAnalyzer$RPM_MASTER_CHECK_ORDER_SDM845;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/server/OnePlusStandbyAnalyzer$RPM_MASTER_CHECK_ORDER_SDM845;->SLPI:Lcom/android/server/OnePlusStandbyAnalyzer$RPM_MASTER_CHECK_ORDER_SDM845;

    const/4 v0, 0x4

    new-array v0, v0, [Lcom/android/server/OnePlusStandbyAnalyzer$RPM_MASTER_CHECK_ORDER_SDM845;

    sget-object v1, Lcom/android/server/OnePlusStandbyAnalyzer$RPM_MASTER_CHECK_ORDER_SDM845;->CDSP:Lcom/android/server/OnePlusStandbyAnalyzer$RPM_MASTER_CHECK_ORDER_SDM845;

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/server/OnePlusStandbyAnalyzer$RPM_MASTER_CHECK_ORDER_SDM845;->ADSP:Lcom/android/server/OnePlusStandbyAnalyzer$RPM_MASTER_CHECK_ORDER_SDM845;

    aput-object v1, v0, v3

    sget-object v1, Lcom/android/server/OnePlusStandbyAnalyzer$RPM_MASTER_CHECK_ORDER_SDM845;->MPSS:Lcom/android/server/OnePlusStandbyAnalyzer$RPM_MASTER_CHECK_ORDER_SDM845;

    aput-object v1, v0, v4

    sget-object v1, Lcom/android/server/OnePlusStandbyAnalyzer$RPM_MASTER_CHECK_ORDER_SDM845;->SLPI:Lcom/android/server/OnePlusStandbyAnalyzer$RPM_MASTER_CHECK_ORDER_SDM845;

    aput-object v1, v0, v5

    sput-object v0, Lcom/android/server/OnePlusStandbyAnalyzer$RPM_MASTER_CHECK_ORDER_SDM845;->$VALUES:[Lcom/android/server/OnePlusStandbyAnalyzer$RPM_MASTER_CHECK_ORDER_SDM845;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/android/server/OnePlusStandbyAnalyzer$RPM_MASTER_CHECK_ORDER_SDM845;->value:I

    return-void
.end method

.method static fromValue(I)Lcom/android/server/OnePlusStandbyAnalyzer$RPM_MASTER_CHECK_ORDER_SDM845;
    .locals 5

    invoke-static {}, Lcom/android/server/OnePlusStandbyAnalyzer$RPM_MASTER_CHECK_ORDER_SDM845;->values()[Lcom/android/server/OnePlusStandbyAnalyzer$RPM_MASTER_CHECK_ORDER_SDM845;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    iget v4, v3, Lcom/android/server/OnePlusStandbyAnalyzer$RPM_MASTER_CHECK_ORDER_SDM845;->value:I

    if-ne v4, p0, :cond_0

    return-object v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/server/OnePlusStandbyAnalyzer$RPM_MASTER_CHECK_ORDER_SDM845;
    .locals 1

    const-class v0, Lcom/android/server/OnePlusStandbyAnalyzer$RPM_MASTER_CHECK_ORDER_SDM845;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/server/OnePlusStandbyAnalyzer$RPM_MASTER_CHECK_ORDER_SDM845;

    return-object v0
.end method

.method public static values()[Lcom/android/server/OnePlusStandbyAnalyzer$RPM_MASTER_CHECK_ORDER_SDM845;
    .locals 1

    sget-object v0, Lcom/android/server/OnePlusStandbyAnalyzer$RPM_MASTER_CHECK_ORDER_SDM845;->$VALUES:[Lcom/android/server/OnePlusStandbyAnalyzer$RPM_MASTER_CHECK_ORDER_SDM845;

    invoke-virtual {v0}, [Lcom/android/server/OnePlusStandbyAnalyzer$RPM_MASTER_CHECK_ORDER_SDM845;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/server/OnePlusStandbyAnalyzer$RPM_MASTER_CHECK_ORDER_SDM845;

    return-object v0
.end method
