.class public final Landroid/telephony/euicc/EuiccRulesAuthTable;
.super Ljava/lang/Object;
.source "EuiccRulesAuthTable.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/telephony/euicc/EuiccRulesAuthTable$Builder;,
        Landroid/telephony/euicc/EuiccRulesAuthTable$PolicyRuleFlag;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/telephony/euicc/EuiccRulesAuthTable;",
            ">;"
        }
    .end annotation
.end field

.field public static final POLICY_RULE_FLAG_CONSENT_REQUIRED:I = 0x1


# instance fields
.field private final mCarrierIds:[[Landroid/service/carrier/CarrierIdentifier;

.field private final mPolicyRuleFlags:[I

.field private final mPolicyRules:[I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroid/telephony/euicc/EuiccRulesAuthTable$1;

    invoke-direct {v0}, Landroid/telephony/euicc/EuiccRulesAuthTable$1;-><init>()V

    sput-object v0, Landroid/telephony/euicc/EuiccRulesAuthTable;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v0

    iput-object v0, p0, Landroid/telephony/euicc/EuiccRulesAuthTable;->mPolicyRules:[I

    iget-object v0, p0, Landroid/telephony/euicc/EuiccRulesAuthTable;->mPolicyRules:[I

    array-length v0, v0

    new-array v1, v0, [[Landroid/service/carrier/CarrierIdentifier;

    iput-object v1, p0, Landroid/telephony/euicc/EuiccRulesAuthTable;->mCarrierIds:[[Landroid/service/carrier/CarrierIdentifier;

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    iget-object v2, p0, Landroid/telephony/euicc/EuiccRulesAuthTable;->mCarrierIds:[[Landroid/service/carrier/CarrierIdentifier;

    sget-object v3, Landroid/service/carrier/CarrierIdentifier;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Landroid/service/carrier/CarrierIdentifier;

    aput-object v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v1

    iput-object v1, p0, Landroid/telephony/euicc/EuiccRulesAuthTable;->mPolicyRuleFlags:[I

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Landroid/telephony/euicc/EuiccRulesAuthTable$1;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/telephony/euicc/EuiccRulesAuthTable;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method private constructor <init>([I[[Landroid/service/carrier/CarrierIdentifier;[I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/telephony/euicc/EuiccRulesAuthTable;->mPolicyRules:[I

    iput-object p2, p0, Landroid/telephony/euicc/EuiccRulesAuthTable;->mCarrierIds:[[Landroid/service/carrier/CarrierIdentifier;

    iput-object p3, p0, Landroid/telephony/euicc/EuiccRulesAuthTable;->mPolicyRuleFlags:[I

    return-void
.end method

.method synthetic constructor <init>([I[[Landroid/service/carrier/CarrierIdentifier;[ILandroid/telephony/euicc/EuiccRulesAuthTable$1;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/telephony/euicc/EuiccRulesAuthTable;-><init>([I[[Landroid/service/carrier/CarrierIdentifier;[I)V

    return-void
.end method

.method public static match(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 4
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x0

    if-ge v0, v1, :cond_0

    return v2

    :cond_0
    move v0, v2

    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v0, v1, :cond_3

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v3, 0x45

    if-eq v1, v3, :cond_2

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v0, v1, :cond_1

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    if-ne v1, v3, :cond_1

    goto :goto_1

    :cond_1
    return v2

    :cond_2
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    const/4 v0, 0x1

    return v0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 9

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_a

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_4

    :cond_1
    move-object v2, p1

    check-cast v2, Landroid/telephony/euicc/EuiccRulesAuthTable;

    iget-object v3, p0, Landroid/telephony/euicc/EuiccRulesAuthTable;->mCarrierIds:[[Landroid/service/carrier/CarrierIdentifier;

    array-length v3, v3

    iget-object v4, v2, Landroid/telephony/euicc/EuiccRulesAuthTable;->mCarrierIds:[[Landroid/service/carrier/CarrierIdentifier;

    array-length v4, v4

    if-eq v3, v4, :cond_2

    return v1

    :cond_2
    move v3, v1

    :goto_0
    iget-object v4, p0, Landroid/telephony/euicc/EuiccRulesAuthTable;->mCarrierIds:[[Landroid/service/carrier/CarrierIdentifier;

    array-length v4, v4

    if-ge v3, v4, :cond_8

    iget-object v4, p0, Landroid/telephony/euicc/EuiccRulesAuthTable;->mCarrierIds:[[Landroid/service/carrier/CarrierIdentifier;

    aget-object v4, v4, v3

    iget-object v5, v2, Landroid/telephony/euicc/EuiccRulesAuthTable;->mCarrierIds:[[Landroid/service/carrier/CarrierIdentifier;

    aget-object v5, v5, v3

    if-eqz v4, :cond_6

    if-eqz v5, :cond_6

    array-length v6, v4

    array-length v7, v5

    if-eq v6, v7, :cond_3

    return v1

    :cond_3
    move v6, v1

    :goto_1
    array-length v7, v4

    if-ge v6, v7, :cond_5

    aget-object v7, v4, v6

    aget-object v8, v5, v6

    invoke-virtual {v7, v8}, Landroid/service/carrier/CarrierIdentifier;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_4

    return v1

    :cond_4
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_5
    goto :goto_2

    :cond_6
    if-nez v4, :cond_7

    if-nez v5, :cond_7

    nop

    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_7
    return v1

    :cond_8
    iget-object v3, p0, Landroid/telephony/euicc/EuiccRulesAuthTable;->mPolicyRules:[I

    iget-object v4, v2, Landroid/telephony/euicc/EuiccRulesAuthTable;->mPolicyRules:[I

    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v3

    if-eqz v3, :cond_9

    iget-object v3, p0, Landroid/telephony/euicc/EuiccRulesAuthTable;->mPolicyRuleFlags:[I

    iget-object v4, v2, Landroid/telephony/euicc/EuiccRulesAuthTable;->mPolicyRuleFlags:[I

    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v3

    if-eqz v3, :cond_9

    goto :goto_3

    :cond_9
    move v0, v1

    :goto_3
    return v0

    :cond_a
    :goto_4
    return v1
.end method

.method public findIndex(ILandroid/service/carrier/CarrierIdentifier;)I
    .locals 7

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v2, p0, Landroid/telephony/euicc/EuiccRulesAuthTable;->mPolicyRules:[I

    array-length v2, v2

    if-ge v1, v2, :cond_7

    iget-object v2, p0, Landroid/telephony/euicc/EuiccRulesAuthTable;->mPolicyRules:[I

    aget v2, v2, v1

    and-int/2addr v2, p1

    if-nez v2, :cond_0

    goto :goto_3

    :cond_0
    iget-object v2, p0, Landroid/telephony/euicc/EuiccRulesAuthTable;->mCarrierIds:[[Landroid/service/carrier/CarrierIdentifier;

    aget-object v2, v2, v1

    if-eqz v2, :cond_6

    array-length v3, v2

    if-nez v3, :cond_1

    goto :goto_3

    :cond_1
    move v3, v0

    :goto_1
    array-length v4, v2

    if-ge v3, v4, :cond_6

    aget-object v4, v2, v3

    invoke-virtual {v4}, Landroid/service/carrier/CarrierIdentifier;->getMcc()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2}, Landroid/service/carrier/CarrierIdentifier;->getMcc()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/telephony/euicc/EuiccRulesAuthTable;->match(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-virtual {v4}, Landroid/service/carrier/CarrierIdentifier;->getMnc()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2}, Landroid/service/carrier/CarrierIdentifier;->getMnc()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/telephony/euicc/EuiccRulesAuthTable;->match(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_2

    goto :goto_2

    :cond_2
    invoke-virtual {v4}, Landroid/service/carrier/CarrierIdentifier;->getGid1()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_3

    invoke-virtual {p2}, Landroid/service/carrier/CarrierIdentifier;->getGid1()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_3

    goto :goto_2

    :cond_3
    invoke-virtual {v4}, Landroid/service/carrier/CarrierIdentifier;->getGid2()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_4

    invoke-virtual {p2}, Landroid/service/carrier/CarrierIdentifier;->getGid2()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_4

    goto :goto_2

    :cond_4
    return v1

    :cond_5
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_6
    :goto_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_7
    const/4 v0, -0x1

    return v0
.end method

.method public hasPolicyRuleFlag(II)Z
    .locals 1

    if-ltz p1, :cond_1

    iget-object v0, p0, Landroid/telephony/euicc/EuiccRulesAuthTable;->mPolicyRules:[I

    array-length v0, v0

    if-ge p1, v0, :cond_1

    iget-object v0, p0, Landroid/telephony/euicc/EuiccRulesAuthTable;->mPolicyRuleFlags:[I

    aget v0, v0, p1

    and-int/2addr v0, p2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_1
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v0, p1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(I)V

    throw v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 4

    iget-object v0, p0, Landroid/telephony/euicc/EuiccRulesAuthTable;->mPolicyRules:[I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeIntArray([I)V

    iget-object v0, p0, Landroid/telephony/euicc/EuiccRulesAuthTable;->mCarrierIds:[[Landroid/service/carrier/CarrierIdentifier;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    invoke-virtual {p1, v3, p2}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroid/telephony/euicc/EuiccRulesAuthTable;->mPolicyRuleFlags:[I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeIntArray([I)V

    return-void
.end method
