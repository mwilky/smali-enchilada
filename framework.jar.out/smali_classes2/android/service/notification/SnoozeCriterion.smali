.class public final Landroid/service/notification/SnoozeCriterion;
.super Ljava/lang/Object;
.source "SnoozeCriterion.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/service/notification/SnoozeCriterion;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mConfirmation:Ljava/lang/CharSequence;

.field private final mExplanation:Ljava/lang/CharSequence;

.field private final mId:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroid/service/notification/SnoozeCriterion$1;

    invoke-direct {v0}, Landroid/service/notification/SnoozeCriterion$1;-><init>()V

    sput-object v0, Landroid/service/notification/SnoozeCriterion;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/service/notification/SnoozeCriterion;->mId:Ljava/lang/String;

    goto :goto_0

    :cond_0
    iput-object v1, p0, Landroid/service/notification/SnoozeCriterion;->mId:Ljava/lang/String;

    :goto_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Landroid/os/Parcel;->readCharSequence()Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Landroid/service/notification/SnoozeCriterion;->mExplanation:Ljava/lang/CharSequence;

    goto :goto_1

    :cond_1
    iput-object v1, p0, Landroid/service/notification/SnoozeCriterion;->mExplanation:Ljava/lang/CharSequence;

    :goto_1
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Landroid/os/Parcel;->readCharSequence()Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Landroid/service/notification/SnoozeCriterion;->mConfirmation:Ljava/lang/CharSequence;

    goto :goto_2

    :cond_2
    iput-object v1, p0, Landroid/service/notification/SnoozeCriterion;->mConfirmation:Ljava/lang/CharSequence;

    :goto_2
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/service/notification/SnoozeCriterion;->mId:Ljava/lang/String;

    iput-object p2, p0, Landroid/service/notification/SnoozeCriterion;->mExplanation:Ljava/lang/CharSequence;

    iput-object p3, p0, Landroid/service/notification/SnoozeCriterion;->mConfirmation:Ljava/lang/CharSequence;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_8

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_3

    :cond_1
    move-object v2, p1

    check-cast v2, Landroid/service/notification/SnoozeCriterion;

    iget-object v3, p0, Landroid/service/notification/SnoozeCriterion;->mId:Ljava/lang/String;

    if-eqz v3, :cond_2

    iget-object v3, p0, Landroid/service/notification/SnoozeCriterion;->mId:Ljava/lang/String;

    iget-object v4, v2, Landroid/service/notification/SnoozeCriterion;->mId:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    goto :goto_0

    :cond_2
    iget-object v3, v2, Landroid/service/notification/SnoozeCriterion;->mId:Ljava/lang/String;

    if-eqz v3, :cond_3

    :goto_0
    return v1

    :cond_3
    iget-object v3, p0, Landroid/service/notification/SnoozeCriterion;->mExplanation:Ljava/lang/CharSequence;

    if-eqz v3, :cond_4

    iget-object v3, p0, Landroid/service/notification/SnoozeCriterion;->mExplanation:Ljava/lang/CharSequence;

    iget-object v4, v2, Landroid/service/notification/SnoozeCriterion;->mExplanation:Ljava/lang/CharSequence;

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    goto :goto_1

    :cond_4
    iget-object v3, v2, Landroid/service/notification/SnoozeCriterion;->mExplanation:Ljava/lang/CharSequence;

    if-eqz v3, :cond_5

    :goto_1
    return v1

    :cond_5
    iget-object v3, p0, Landroid/service/notification/SnoozeCriterion;->mConfirmation:Ljava/lang/CharSequence;

    if-eqz v3, :cond_6

    iget-object v0, p0, Landroid/service/notification/SnoozeCriterion;->mConfirmation:Ljava/lang/CharSequence;

    iget-object v1, v2, Landroid/service/notification/SnoozeCriterion;->mConfirmation:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_2

    :cond_6
    iget-object v3, v2, Landroid/service/notification/SnoozeCriterion;->mConfirmation:Ljava/lang/CharSequence;

    if-nez v3, :cond_7

    goto :goto_2

    :cond_7
    move v0, v1

    :goto_2
    return v0

    :cond_8
    :goto_3
    return v1
.end method

.method public getConfirmation()Ljava/lang/CharSequence;
    .locals 1

    iget-object v0, p0, Landroid/service/notification/SnoozeCriterion;->mConfirmation:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getExplanation()Ljava/lang/CharSequence;
    .locals 1

    iget-object v0, p0, Landroid/service/notification/SnoozeCriterion;->mExplanation:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/service/notification/SnoozeCriterion;->mId:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 5

    iget-object v0, p0, Landroid/service/notification/SnoozeCriterion;->mId:Ljava/lang/String;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/service/notification/SnoozeCriterion;->mId:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    const/16 v2, 0x1f

    mul-int v3, v2, v0

    iget-object v4, p0, Landroid/service/notification/SnoozeCriterion;->mExplanation:Ljava/lang/CharSequence;

    if-eqz v4, :cond_1

    iget-object v4, p0, Landroid/service/notification/SnoozeCriterion;->mExplanation:Ljava/lang/CharSequence;

    invoke-virtual {v4}, Ljava/lang/Object;->hashCode()I

    move-result v4

    goto :goto_1

    :cond_1
    move v4, v1

    :goto_1
    add-int/2addr v3, v4

    mul-int/2addr v2, v3

    iget-object v0, p0, Landroid/service/notification/SnoozeCriterion;->mConfirmation:Ljava/lang/CharSequence;

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/service/notification/SnoozeCriterion;->mConfirmation:Ljava/lang/CharSequence;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    nop

    :cond_2
    add-int/2addr v2, v1

    return v2
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 3

    iget-object v0, p0, Landroid/service/notification/SnoozeCriterion;->mId:Ljava/lang/String;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeByte(B)V

    iget-object v0, p0, Landroid/service/notification/SnoozeCriterion;->mId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeByte(B)V

    :goto_0
    iget-object v0, p0, Landroid/service/notification/SnoozeCriterion;->mExplanation:Ljava/lang/CharSequence;

    if-eqz v0, :cond_1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeByte(B)V

    iget-object v0, p0, Landroid/service/notification/SnoozeCriterion;->mExplanation:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeCharSequence(Ljava/lang/CharSequence;)V

    goto :goto_1

    :cond_1
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeByte(B)V

    :goto_1
    iget-object v0, p0, Landroid/service/notification/SnoozeCriterion;->mConfirmation:Ljava/lang/CharSequence;

    if-eqz v0, :cond_2

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeByte(B)V

    iget-object v0, p0, Landroid/service/notification/SnoozeCriterion;->mConfirmation:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeCharSequence(Ljava/lang/CharSequence;)V

    goto :goto_2

    :cond_2
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeByte(B)V

    :goto_2
    return-void
.end method
