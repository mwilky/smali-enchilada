.class public Landroid/os/Temperature;
.super Ljava/lang/Object;
.source "Temperature.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/os/Temperature;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mType:I

.field private mValue:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroid/os/Temperature$1;

    invoke-direct {v0}, Landroid/os/Temperature$1;-><init>()V

    sput-object v0, Landroid/os/Temperature;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    const v0, -0x800001

    const/high16 v1, -0x80000000

    invoke-direct {p0, v0, v1}, Landroid/os/Temperature;-><init>(FI)V

    return-void
.end method

.method public constructor <init>(FI)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroid/os/Temperature;->mValue:F

    iput p2, p0, Landroid/os/Temperature;->mType:I

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p0, p1}, Landroid/os/Temperature;->readFromParcel(Landroid/os/Parcel;)V

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Landroid/os/Temperature$1;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/os/Temperature;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getType()I
    .locals 1

    iget v0, p0, Landroid/os/Temperature;->mType:I

    return v0
.end method

.method public getValue()F
    .locals 1

    iget v0, p0, Landroid/os/Temperature;->mValue:F

    return v0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 1

    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Landroid/os/Temperature;->mValue:F

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/os/Temperature;->mType:I

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    iget v0, p0, Landroid/os/Temperature;->mValue:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    iget v0, p0, Landroid/os/Temperature;->mType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
