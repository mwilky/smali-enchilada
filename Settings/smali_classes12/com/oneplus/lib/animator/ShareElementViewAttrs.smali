.class public Lcom/oneplus/lib/animator/ShareElementViewAttrs;
.super Ljava/lang/Object;
.source "ShareElementViewAttrs.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/oneplus/lib/animator/ShareElementViewAttrs;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public alpha:F

.field public height:F

.field public id:I

.field public startX:F

.field public startY:F

.field public width:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/oneplus/lib/animator/ShareElementViewAttrs$1;

    invoke-direct {v0}, Lcom/oneplus/lib/animator/ShareElementViewAttrs$1;-><init>()V

    sput-object v0, Lcom/oneplus/lib/animator/ShareElementViewAttrs;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(IFFFF)V
    .locals 7

    const/high16 v6, 0x3f800000    # 1.0f

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v6}, Lcom/oneplus/lib/animator/ShareElementViewAttrs;-><init>(IFFFFF)V

    return-void
.end method

.method public constructor <init>(IFFFFF)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/oneplus/lib/animator/ShareElementViewAttrs;->id:I

    iput p2, p0, Lcom/oneplus/lib/animator/ShareElementViewAttrs;->startX:F

    iput p3, p0, Lcom/oneplus/lib/animator/ShareElementViewAttrs;->startY:F

    iput p4, p0, Lcom/oneplus/lib/animator/ShareElementViewAttrs;->width:F

    iput p5, p0, Lcom/oneplus/lib/animator/ShareElementViewAttrs;->height:F

    iput p6, p0, Lcom/oneplus/lib/animator/ShareElementViewAttrs;->alpha:F

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/oneplus/lib/animator/ShareElementViewAttrs;->id:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/oneplus/lib/animator/ShareElementViewAttrs;->startX:F

    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/oneplus/lib/animator/ShareElementViewAttrs;->startY:F

    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/oneplus/lib/animator/ShareElementViewAttrs;->width:F

    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/oneplus/lib/animator/ShareElementViewAttrs;->height:F

    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/oneplus/lib/animator/ShareElementViewAttrs;->alpha:F

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    iget v0, p0, Lcom/oneplus/lib/animator/ShareElementViewAttrs;->id:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/oneplus/lib/animator/ShareElementViewAttrs;->startX:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    iget v0, p0, Lcom/oneplus/lib/animator/ShareElementViewAttrs;->startY:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    iget v0, p0, Lcom/oneplus/lib/animator/ShareElementViewAttrs;->width:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    iget v0, p0, Lcom/oneplus/lib/animator/ShareElementViewAttrs;->height:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    iget v0, p0, Lcom/oneplus/lib/animator/ShareElementViewAttrs;->alpha:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    return-void
.end method
