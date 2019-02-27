.class public final Landroid/net/wifi/hotspot2/pps/Policy$RoamingPartner;
.super Ljava/lang/Object;
.source "Policy.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/hotspot2/pps/Policy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "RoamingPartner"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/net/wifi/hotspot2/pps/Policy$RoamingPartner;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mCountries:Ljava/lang/String;

.field private mFqdn:Ljava/lang/String;

.field private mFqdnExactMatch:Z

.field private mPriority:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroid/net/wifi/hotspot2/pps/Policy$RoamingPartner$1;

    invoke-direct {v0}, Landroid/net/wifi/hotspot2/pps/Policy$RoamingPartner$1;-><init>()V

    sput-object v0, Landroid/net/wifi/hotspot2/pps/Policy$RoamingPartner;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/net/wifi/hotspot2/pps/Policy$RoamingPartner;->mFqdn:Ljava/lang/String;

    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/net/wifi/hotspot2/pps/Policy$RoamingPartner;->mFqdnExactMatch:Z

    const/high16 v1, -0x80000000

    iput v1, p0, Landroid/net/wifi/hotspot2/pps/Policy$RoamingPartner;->mPriority:I

    iput-object v0, p0, Landroid/net/wifi/hotspot2/pps/Policy$RoamingPartner;->mCountries:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/net/wifi/hotspot2/pps/Policy$RoamingPartner;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/net/wifi/hotspot2/pps/Policy$RoamingPartner;->mFqdn:Ljava/lang/String;

    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/net/wifi/hotspot2/pps/Policy$RoamingPartner;->mFqdnExactMatch:Z

    const/high16 v1, -0x80000000

    iput v1, p0, Landroid/net/wifi/hotspot2/pps/Policy$RoamingPartner;->mPriority:I

    iput-object v0, p0, Landroid/net/wifi/hotspot2/pps/Policy$RoamingPartner;->mCountries:Ljava/lang/String;

    if-eqz p1, :cond_0

    iget-object v0, p1, Landroid/net/wifi/hotspot2/pps/Policy$RoamingPartner;->mFqdn:Ljava/lang/String;

    iput-object v0, p0, Landroid/net/wifi/hotspot2/pps/Policy$RoamingPartner;->mFqdn:Ljava/lang/String;

    iget-boolean v0, p1, Landroid/net/wifi/hotspot2/pps/Policy$RoamingPartner;->mFqdnExactMatch:Z

    iput-boolean v0, p0, Landroid/net/wifi/hotspot2/pps/Policy$RoamingPartner;->mFqdnExactMatch:Z

    iget v0, p1, Landroid/net/wifi/hotspot2/pps/Policy$RoamingPartner;->mPriority:I

    iput v0, p0, Landroid/net/wifi/hotspot2/pps/Policy$RoamingPartner;->mPriority:I

    iget-object v0, p1, Landroid/net/wifi/hotspot2/pps/Policy$RoamingPartner;->mCountries:Ljava/lang/String;

    iput-object v0, p0, Landroid/net/wifi/hotspot2/pps/Policy$RoamingPartner;->mCountries:Ljava/lang/String;

    :cond_0
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
    instance-of v1, p1, Landroid/net/wifi/hotspot2/pps/Policy$RoamingPartner;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    move-object v1, p1

    check-cast v1, Landroid/net/wifi/hotspot2/pps/Policy$RoamingPartner;

    iget-object v3, p0, Landroid/net/wifi/hotspot2/pps/Policy$RoamingPartner;->mFqdn:Ljava/lang/String;

    iget-object v4, v1, Landroid/net/wifi/hotspot2/pps/Policy$RoamingPartner;->mFqdn:Ljava/lang/String;

    invoke-static {v3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-boolean v3, p0, Landroid/net/wifi/hotspot2/pps/Policy$RoamingPartner;->mFqdnExactMatch:Z

    iget-boolean v4, v1, Landroid/net/wifi/hotspot2/pps/Policy$RoamingPartner;->mFqdnExactMatch:Z

    if-ne v3, v4, :cond_2

    iget v3, p0, Landroid/net/wifi/hotspot2/pps/Policy$RoamingPartner;->mPriority:I

    iget v4, v1, Landroid/net/wifi/hotspot2/pps/Policy$RoamingPartner;->mPriority:I

    if-ne v3, v4, :cond_2

    iget-object v3, p0, Landroid/net/wifi/hotspot2/pps/Policy$RoamingPartner;->mCountries:Ljava/lang/String;

    iget-object v4, v1, Landroid/net/wifi/hotspot2/pps/Policy$RoamingPartner;->mCountries:Ljava/lang/String;

    invoke-static {v3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_0

    :cond_2
    move v0, v2

    :goto_0
    return v0
.end method

.method public getCountries()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/net/wifi/hotspot2/pps/Policy$RoamingPartner;->mCountries:Ljava/lang/String;

    return-object v0
.end method

.method public getFqdn()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/net/wifi/hotspot2/pps/Policy$RoamingPartner;->mFqdn:Ljava/lang/String;

    return-object v0
.end method

.method public getFqdnExactMatch()Z
    .locals 1

    iget-boolean v0, p0, Landroid/net/wifi/hotspot2/pps/Policy$RoamingPartner;->mFqdnExactMatch:Z

    return v0
.end method

.method public getPriority()I
    .locals 1

    iget v0, p0, Landroid/net/wifi/hotspot2/pps/Policy$RoamingPartner;->mPriority:I

    return v0
.end method

.method public hashCode()I
    .locals 3

    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Landroid/net/wifi/hotspot2/pps/Policy$RoamingPartner;->mFqdn:Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-boolean v1, p0, Landroid/net/wifi/hotspot2/pps/Policy$RoamingPartner;->mFqdnExactMatch:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget v1, p0, Landroid/net/wifi/hotspot2/pps/Policy$RoamingPartner;->mPriority:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget-object v1, p0, Landroid/net/wifi/hotspot2/pps/Policy$RoamingPartner;->mCountries:Ljava/lang/String;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public setCountries(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Landroid/net/wifi/hotspot2/pps/Policy$RoamingPartner;->mCountries:Ljava/lang/String;

    return-void
.end method

.method public setFqdn(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Landroid/net/wifi/hotspot2/pps/Policy$RoamingPartner;->mFqdn:Ljava/lang/String;

    return-void
.end method

.method public setFqdnExactMatch(Z)V
    .locals 0

    iput-boolean p1, p0, Landroid/net/wifi/hotspot2/pps/Policy$RoamingPartner;->mFqdnExactMatch:Z

    return-void
.end method

.method public setPriority(I)V
    .locals 0

    iput p1, p0, Landroid/net/wifi/hotspot2/pps/Policy$RoamingPartner;->mPriority:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "FQDN: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/net/wifi/hotspot2/pps/Policy$RoamingPartner;->mFqdn:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "ExactMatch: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "mFqdnExactMatch"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "Priority: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/net/wifi/hotspot2/pps/Policy$RoamingPartner;->mPriority:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "Countries: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/net/wifi/hotspot2/pps/Policy$RoamingPartner;->mCountries:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public validate()Z
    .locals 3

    iget-object v0, p0, Landroid/net/wifi/hotspot2/pps/Policy$RoamingPartner;->mFqdn:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const-string v0, "Policy"

    const-string v2, "Missing FQDN"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_0
    iget-object v0, p0, Landroid/net/wifi/hotspot2/pps/Policy$RoamingPartner;->mCountries:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "Policy"

    const-string v2, "Missing countries"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    iget-object v0, p0, Landroid/net/wifi/hotspot2/pps/Policy$RoamingPartner;->mFqdn:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-boolean v0, p0, Landroid/net/wifi/hotspot2/pps/Policy$RoamingPartner;->mFqdnExactMatch:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/net/wifi/hotspot2/pps/Policy$RoamingPartner;->mPriority:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Landroid/net/wifi/hotspot2/pps/Policy$RoamingPartner;->mCountries:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
