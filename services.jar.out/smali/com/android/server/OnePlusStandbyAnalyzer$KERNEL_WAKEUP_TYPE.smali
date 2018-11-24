.class public final enum Lcom/android/server/OnePlusStandbyAnalyzer$KERNEL_WAKEUP_TYPE;
.super Ljava/lang/Enum;
.source "OnePlusStandbyAnalyzer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/OnePlusStandbyAnalyzer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "KERNEL_WAKEUP_TYPE"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/server/OnePlusStandbyAnalyzer$KERNEL_WAKEUP_TYPE;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/server/OnePlusStandbyAnalyzer$KERNEL_WAKEUP_TYPE;

.field public static final enum WLAN_CE_2:Lcom/android/server/OnePlusStandbyAnalyzer$KERNEL_WAKEUP_TYPE;

.field public static final enum dsps:Lcom/android/server/OnePlusStandbyAnalyzer$KERNEL_WAKEUP_TYPE;

.field public static final enum ipa:Lcom/android/server/OnePlusStandbyAnalyzer$KERNEL_WAKEUP_TYPE;

.field public static final enum modem:Lcom/android/server/OnePlusStandbyAnalyzer$KERNEL_WAKEUP_TYPE;

.field public static final enum msm_hs_wakeup:Lcom/android/server/OnePlusStandbyAnalyzer$KERNEL_WAKEUP_TYPE;

.field public static final enum msm_pcie_wake:Lcom/android/server/OnePlusStandbyAnalyzer$KERNEL_WAKEUP_TYPE;

.field public static final enum other:Lcom/android/server/OnePlusStandbyAnalyzer$KERNEL_WAKEUP_TYPE;


# instance fields
.field private text:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 10

    new-instance v0, Lcom/android/server/OnePlusStandbyAnalyzer$KERNEL_WAKEUP_TYPE;

    const-string v1, "WLAN_CE_2"

    const-string v2, "WLAN_CE_2"

    const/4 v3, 0x0

    invoke-direct {v0, v1, v3, v2}, Lcom/android/server/OnePlusStandbyAnalyzer$KERNEL_WAKEUP_TYPE;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/android/server/OnePlusStandbyAnalyzer$KERNEL_WAKEUP_TYPE;->WLAN_CE_2:Lcom/android/server/OnePlusStandbyAnalyzer$KERNEL_WAKEUP_TYPE;

    new-instance v0, Lcom/android/server/OnePlusStandbyAnalyzer$KERNEL_WAKEUP_TYPE;

    const-string/jumbo v1, "msm_pcie_wake"

    const-string/jumbo v2, "msm_pcie_wake"

    const/4 v4, 0x1

    invoke-direct {v0, v1, v4, v2}, Lcom/android/server/OnePlusStandbyAnalyzer$KERNEL_WAKEUP_TYPE;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/android/server/OnePlusStandbyAnalyzer$KERNEL_WAKEUP_TYPE;->msm_pcie_wake:Lcom/android/server/OnePlusStandbyAnalyzer$KERNEL_WAKEUP_TYPE;

    new-instance v0, Lcom/android/server/OnePlusStandbyAnalyzer$KERNEL_WAKEUP_TYPE;

    const-string/jumbo v1, "modem"

    const-string/jumbo v2, "modem"

    const/4 v5, 0x2

    invoke-direct {v0, v1, v5, v2}, Lcom/android/server/OnePlusStandbyAnalyzer$KERNEL_WAKEUP_TYPE;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/android/server/OnePlusStandbyAnalyzer$KERNEL_WAKEUP_TYPE;->modem:Lcom/android/server/OnePlusStandbyAnalyzer$KERNEL_WAKEUP_TYPE;

    new-instance v0, Lcom/android/server/OnePlusStandbyAnalyzer$KERNEL_WAKEUP_TYPE;

    const-string/jumbo v1, "ipa"

    const-string/jumbo v2, "ipa"

    const/4 v6, 0x3

    invoke-direct {v0, v1, v6, v2}, Lcom/android/server/OnePlusStandbyAnalyzer$KERNEL_WAKEUP_TYPE;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/android/server/OnePlusStandbyAnalyzer$KERNEL_WAKEUP_TYPE;->ipa:Lcom/android/server/OnePlusStandbyAnalyzer$KERNEL_WAKEUP_TYPE;

    new-instance v0, Lcom/android/server/OnePlusStandbyAnalyzer$KERNEL_WAKEUP_TYPE;

    const-string v1, "dsps"

    const-string v2, "dsps"

    const/4 v7, 0x4

    invoke-direct {v0, v1, v7, v2}, Lcom/android/server/OnePlusStandbyAnalyzer$KERNEL_WAKEUP_TYPE;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/android/server/OnePlusStandbyAnalyzer$KERNEL_WAKEUP_TYPE;->dsps:Lcom/android/server/OnePlusStandbyAnalyzer$KERNEL_WAKEUP_TYPE;

    new-instance v0, Lcom/android/server/OnePlusStandbyAnalyzer$KERNEL_WAKEUP_TYPE;

    const-string/jumbo v1, "msm_hs_wakeup"

    const-string/jumbo v2, "msm_hs_wakeup"

    const/4 v8, 0x5

    invoke-direct {v0, v1, v8, v2}, Lcom/android/server/OnePlusStandbyAnalyzer$KERNEL_WAKEUP_TYPE;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/android/server/OnePlusStandbyAnalyzer$KERNEL_WAKEUP_TYPE;->msm_hs_wakeup:Lcom/android/server/OnePlusStandbyAnalyzer$KERNEL_WAKEUP_TYPE;

    new-instance v0, Lcom/android/server/OnePlusStandbyAnalyzer$KERNEL_WAKEUP_TYPE;

    const-string/jumbo v1, "other"

    const-string/jumbo v2, "other"

    const/4 v9, 0x6

    invoke-direct {v0, v1, v9, v2}, Lcom/android/server/OnePlusStandbyAnalyzer$KERNEL_WAKEUP_TYPE;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/android/server/OnePlusStandbyAnalyzer$KERNEL_WAKEUP_TYPE;->other:Lcom/android/server/OnePlusStandbyAnalyzer$KERNEL_WAKEUP_TYPE;

    const/4 v0, 0x7

    new-array v0, v0, [Lcom/android/server/OnePlusStandbyAnalyzer$KERNEL_WAKEUP_TYPE;

    sget-object v1, Lcom/android/server/OnePlusStandbyAnalyzer$KERNEL_WAKEUP_TYPE;->WLAN_CE_2:Lcom/android/server/OnePlusStandbyAnalyzer$KERNEL_WAKEUP_TYPE;

    aput-object v1, v0, v3

    sget-object v1, Lcom/android/server/OnePlusStandbyAnalyzer$KERNEL_WAKEUP_TYPE;->msm_pcie_wake:Lcom/android/server/OnePlusStandbyAnalyzer$KERNEL_WAKEUP_TYPE;

    aput-object v1, v0, v4

    sget-object v1, Lcom/android/server/OnePlusStandbyAnalyzer$KERNEL_WAKEUP_TYPE;->modem:Lcom/android/server/OnePlusStandbyAnalyzer$KERNEL_WAKEUP_TYPE;

    aput-object v1, v0, v5

    sget-object v1, Lcom/android/server/OnePlusStandbyAnalyzer$KERNEL_WAKEUP_TYPE;->ipa:Lcom/android/server/OnePlusStandbyAnalyzer$KERNEL_WAKEUP_TYPE;

    aput-object v1, v0, v6

    sget-object v1, Lcom/android/server/OnePlusStandbyAnalyzer$KERNEL_WAKEUP_TYPE;->dsps:Lcom/android/server/OnePlusStandbyAnalyzer$KERNEL_WAKEUP_TYPE;

    aput-object v1, v0, v7

    sget-object v1, Lcom/android/server/OnePlusStandbyAnalyzer$KERNEL_WAKEUP_TYPE;->msm_hs_wakeup:Lcom/android/server/OnePlusStandbyAnalyzer$KERNEL_WAKEUP_TYPE;

    aput-object v1, v0, v8

    sget-object v1, Lcom/android/server/OnePlusStandbyAnalyzer$KERNEL_WAKEUP_TYPE;->other:Lcom/android/server/OnePlusStandbyAnalyzer$KERNEL_WAKEUP_TYPE;

    aput-object v1, v0, v9

    sput-object v0, Lcom/android/server/OnePlusStandbyAnalyzer$KERNEL_WAKEUP_TYPE;->$VALUES:[Lcom/android/server/OnePlusStandbyAnalyzer$KERNEL_WAKEUP_TYPE;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/android/server/OnePlusStandbyAnalyzer$KERNEL_WAKEUP_TYPE;->text:Ljava/lang/String;

    return-void
.end method

.method public static fromString(Ljava/lang/String;)Lcom/android/server/OnePlusStandbyAnalyzer$KERNEL_WAKEUP_TYPE;
    .locals 5

    if-eqz p0, :cond_1

    invoke-static {}, Lcom/android/server/OnePlusStandbyAnalyzer$KERNEL_WAKEUP_TYPE;->values()[Lcom/android/server/OnePlusStandbyAnalyzer$KERNEL_WAKEUP_TYPE;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    iget-object v4, v3, Lcom/android/server/OnePlusStandbyAnalyzer$KERNEL_WAKEUP_TYPE;->text:Ljava/lang/String;

    invoke-virtual {p0, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    return-object v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    sget-object v0, Lcom/android/server/OnePlusStandbyAnalyzer$KERNEL_WAKEUP_TYPE;->other:Lcom/android/server/OnePlusStandbyAnalyzer$KERNEL_WAKEUP_TYPE;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/server/OnePlusStandbyAnalyzer$KERNEL_WAKEUP_TYPE;
    .locals 1

    const-class v0, Lcom/android/server/OnePlusStandbyAnalyzer$KERNEL_WAKEUP_TYPE;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/server/OnePlusStandbyAnalyzer$KERNEL_WAKEUP_TYPE;

    return-object v0
.end method

.method public static values()[Lcom/android/server/OnePlusStandbyAnalyzer$KERNEL_WAKEUP_TYPE;
    .locals 1

    sget-object v0, Lcom/android/server/OnePlusStandbyAnalyzer$KERNEL_WAKEUP_TYPE;->$VALUES:[Lcom/android/server/OnePlusStandbyAnalyzer$KERNEL_WAKEUP_TYPE;

    invoke-virtual {v0}, [Lcom/android/server/OnePlusStandbyAnalyzer$KERNEL_WAKEUP_TYPE;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/server/OnePlusStandbyAnalyzer$KERNEL_WAKEUP_TYPE;

    return-object v0
.end method
