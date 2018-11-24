.class public final enum Lcom/android/server/OnePlusStandbyAnalyzer$TELEPHONY_TYPE;
.super Ljava/lang/Enum;
.source "OnePlusStandbyAnalyzer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/OnePlusStandbyAnalyzer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "TELEPHONY_TYPE"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/server/OnePlusStandbyAnalyzer$TELEPHONY_TYPE;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/server/OnePlusStandbyAnalyzer$TELEPHONY_TYPE;

.field public static final enum DATACALL_STATE:Lcom/android/server/OnePlusStandbyAnalyzer$TELEPHONY_TYPE;

.field public static final enum IMS_STATE:Lcom/android/server/OnePlusStandbyAnalyzer$TELEPHONY_TYPE;

.field public static final enum NETWORK_STATE:Lcom/android/server/OnePlusStandbyAnalyzer$TELEPHONY_TYPE;


# instance fields
.field private value:I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    new-instance v0, Lcom/android/server/OnePlusStandbyAnalyzer$TELEPHONY_TYPE;

    const-string v1, "NETWORK_STATE"

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/OnePlusStandbyAnalyzer$TELEPHONY_TYPE;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/server/OnePlusStandbyAnalyzer$TELEPHONY_TYPE;->NETWORK_STATE:Lcom/android/server/OnePlusStandbyAnalyzer$TELEPHONY_TYPE;

    new-instance v0, Lcom/android/server/OnePlusStandbyAnalyzer$TELEPHONY_TYPE;

    const-string v1, "DATACALL_STATE"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v3, v4}, Lcom/android/server/OnePlusStandbyAnalyzer$TELEPHONY_TYPE;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/server/OnePlusStandbyAnalyzer$TELEPHONY_TYPE;->DATACALL_STATE:Lcom/android/server/OnePlusStandbyAnalyzer$TELEPHONY_TYPE;

    new-instance v0, Lcom/android/server/OnePlusStandbyAnalyzer$TELEPHONY_TYPE;

    const-string v1, "IMS_STATE"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v4, v5}, Lcom/android/server/OnePlusStandbyAnalyzer$TELEPHONY_TYPE;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/server/OnePlusStandbyAnalyzer$TELEPHONY_TYPE;->IMS_STATE:Lcom/android/server/OnePlusStandbyAnalyzer$TELEPHONY_TYPE;

    new-array v0, v5, [Lcom/android/server/OnePlusStandbyAnalyzer$TELEPHONY_TYPE;

    sget-object v1, Lcom/android/server/OnePlusStandbyAnalyzer$TELEPHONY_TYPE;->NETWORK_STATE:Lcom/android/server/OnePlusStandbyAnalyzer$TELEPHONY_TYPE;

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/server/OnePlusStandbyAnalyzer$TELEPHONY_TYPE;->DATACALL_STATE:Lcom/android/server/OnePlusStandbyAnalyzer$TELEPHONY_TYPE;

    aput-object v1, v0, v3

    sget-object v1, Lcom/android/server/OnePlusStandbyAnalyzer$TELEPHONY_TYPE;->IMS_STATE:Lcom/android/server/OnePlusStandbyAnalyzer$TELEPHONY_TYPE;

    aput-object v1, v0, v4

    sput-object v0, Lcom/android/server/OnePlusStandbyAnalyzer$TELEPHONY_TYPE;->$VALUES:[Lcom/android/server/OnePlusStandbyAnalyzer$TELEPHONY_TYPE;

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

    iput p3, p0, Lcom/android/server/OnePlusStandbyAnalyzer$TELEPHONY_TYPE;->value:I

    return-void
.end method

.method static synthetic access$100(Lcom/android/server/OnePlusStandbyAnalyzer$TELEPHONY_TYPE;)I
    .locals 1

    iget v0, p0, Lcom/android/server/OnePlusStandbyAnalyzer$TELEPHONY_TYPE;->value:I

    return v0
.end method

.method static fromValue(I)Lcom/android/server/OnePlusStandbyAnalyzer$TELEPHONY_TYPE;
    .locals 5

    invoke-static {}, Lcom/android/server/OnePlusStandbyAnalyzer$TELEPHONY_TYPE;->values()[Lcom/android/server/OnePlusStandbyAnalyzer$TELEPHONY_TYPE;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    iget v4, v3, Lcom/android/server/OnePlusStandbyAnalyzer$TELEPHONY_TYPE;->value:I

    if-ne v4, p0, :cond_0

    return-object v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method static toReasonString(Lcom/android/server/OnePlusStandbyAnalyzer$TELEPHONY_TYPE;Z)Ljava/lang/String;
    .locals 3

    const/4 v0, 0x0

    sget-object v1, Lcom/android/server/OnePlusStandbyAnalyzer$14;->$SwitchMap$com$android$server$OnePlusStandbyAnalyzer$TELEPHONY_TYPE:[I

    invoke-virtual {p0}, Lcom/android/server/OnePlusStandbyAnalyzer$TELEPHONY_TYPE;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    goto :goto_3

    :pswitch_0
    if-eqz p1, :cond_0

    const-string v1, "QXDM_TELEPHONY_IMS_ANOMALY"

    goto :goto_0

    :cond_0
    const-string v1, "TELEPHONY_IMS_ANOMALY"

    :goto_0
    move-object v0, v1

    goto :goto_3

    :pswitch_1
    if-eqz p1, :cond_1

    const-string v1, "QXDM_TELEPHONY_DATACALL_ANOMALY"

    goto :goto_1

    :cond_1
    const-string v1, "TELEPHONY_DATACALL_ANOMALY"

    :goto_1
    move-object v0, v1

    goto :goto_3

    :pswitch_2
    if-eqz p1, :cond_2

    const-string v1, "QXDM_TELEPHONY_NETWORK_ANOMALY"

    goto :goto_2

    :cond_2
    const-string v1, "TELEPHONY_NETWORK_ANOMALY"

    :goto_2
    move-object v0, v1

    nop

    :goto_3
    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/server/OnePlusStandbyAnalyzer$TELEPHONY_TYPE;
    .locals 1

    const-class v0, Lcom/android/server/OnePlusStandbyAnalyzer$TELEPHONY_TYPE;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/server/OnePlusStandbyAnalyzer$TELEPHONY_TYPE;

    return-object v0
.end method

.method public static values()[Lcom/android/server/OnePlusStandbyAnalyzer$TELEPHONY_TYPE;
    .locals 1

    sget-object v0, Lcom/android/server/OnePlusStandbyAnalyzer$TELEPHONY_TYPE;->$VALUES:[Lcom/android/server/OnePlusStandbyAnalyzer$TELEPHONY_TYPE;

    invoke-virtual {v0}, [Lcom/android/server/OnePlusStandbyAnalyzer$TELEPHONY_TYPE;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/server/OnePlusStandbyAnalyzer$TELEPHONY_TYPE;

    return-object v0
.end method
