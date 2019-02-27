.class public final Landroid/view/DisplayCutout$ParcelableWrapper;
.super Ljava/lang/Object;
.source "DisplayCutout.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/DisplayCutout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ParcelableWrapper"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/view/DisplayCutout$ParcelableWrapper;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mInner:Landroid/view/DisplayCutout;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroid/view/DisplayCutout$ParcelableWrapper$1;

    invoke-direct {v0}, Landroid/view/DisplayCutout$ParcelableWrapper$1;-><init>()V

    sput-object v0, Landroid/view/DisplayCutout$ParcelableWrapper;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    sget-object v0, Landroid/view/DisplayCutout;->NO_CUTOUT:Landroid/view/DisplayCutout;

    invoke-direct {p0, v0}, Landroid/view/DisplayCutout$ParcelableWrapper;-><init>(Landroid/view/DisplayCutout;)V

    return-void
.end method

.method public constructor <init>(Landroid/view/DisplayCutout;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/view/DisplayCutout$ParcelableWrapper;->mInner:Landroid/view/DisplayCutout;

    return-void
.end method

.method public static readCutoutFromParcel(Landroid/os/Parcel;)Landroid/view/DisplayCutout;
    .locals 6

    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, -0x1

    if-ne v0, v2, :cond_0

    return-object v1

    :cond_0
    if-nez v0, :cond_1

    sget-object v1, Landroid/view/DisplayCutout;->NO_CUTOUT:Landroid/view/DisplayCutout;

    return-object v1

    :cond_1
    sget-object v2, Landroid/graphics/Rect;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p0, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/Rect;

    sget-object v3, Landroid/graphics/Region;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p0, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/Region;

    new-instance v4, Landroid/view/DisplayCutout;

    const/4 v5, 0x0

    invoke-direct {v4, v2, v3, v5, v1}, Landroid/view/DisplayCutout;-><init>(Landroid/graphics/Rect;Landroid/graphics/Region;ZLandroid/view/DisplayCutout$1;)V

    return-object v4
.end method

.method public static writeCutoutToParcel(Landroid/view/DisplayCutout;Landroid/os/Parcel;I)V
    .locals 1

    if-nez p0, :cond_0

    const/4 v0, -0x1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    :cond_0
    sget-object v0, Landroid/view/DisplayCutout;->NO_CUTOUT:Landroid/view/DisplayCutout;

    if-ne p0, v0, :cond_1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    invoke-static {p0}, Landroid/view/DisplayCutout;->access$000(Landroid/view/DisplayCutout;)Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    invoke-static {p0}, Landroid/view/DisplayCutout;->access$100(Landroid/view/DisplayCutout;)Landroid/graphics/Region;

    move-result-object v0

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    :goto_0
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    instance-of v0, p1, Landroid/view/DisplayCutout$ParcelableWrapper;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/view/DisplayCutout$ParcelableWrapper;->mInner:Landroid/view/DisplayCutout;

    move-object v1, p1

    check-cast v1, Landroid/view/DisplayCutout$ParcelableWrapper;

    iget-object v1, v1, Landroid/view/DisplayCutout$ParcelableWrapper;->mInner:Landroid/view/DisplayCutout;

    invoke-virtual {v0, v1}, Landroid/view/DisplayCutout;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public get()Landroid/view/DisplayCutout;
    .locals 1

    iget-object v0, p0, Landroid/view/DisplayCutout$ParcelableWrapper;->mInner:Landroid/view/DisplayCutout;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    iget-object v0, p0, Landroid/view/DisplayCutout$ParcelableWrapper;->mInner:Landroid/view/DisplayCutout;

    invoke-virtual {v0}, Landroid/view/DisplayCutout;->hashCode()I

    move-result v0

    return v0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 1

    invoke-static {p1}, Landroid/view/DisplayCutout$ParcelableWrapper;->readCutoutFromParcel(Landroid/os/Parcel;)Landroid/view/DisplayCutout;

    move-result-object v0

    iput-object v0, p0, Landroid/view/DisplayCutout$ParcelableWrapper;->mInner:Landroid/view/DisplayCutout;

    return-void
.end method

.method public set(Landroid/view/DisplayCutout$ParcelableWrapper;)V
    .locals 1

    invoke-virtual {p1}, Landroid/view/DisplayCutout$ParcelableWrapper;->get()Landroid/view/DisplayCutout;

    move-result-object v0

    iput-object v0, p0, Landroid/view/DisplayCutout$ParcelableWrapper;->mInner:Landroid/view/DisplayCutout;

    return-void
.end method

.method public set(Landroid/view/DisplayCutout;)V
    .locals 0

    iput-object p1, p0, Landroid/view/DisplayCutout$ParcelableWrapper;->mInner:Landroid/view/DisplayCutout;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/view/DisplayCutout$ParcelableWrapper;->mInner:Landroid/view/DisplayCutout;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    iget-object v0, p0, Landroid/view/DisplayCutout$ParcelableWrapper;->mInner:Landroid/view/DisplayCutout;

    invoke-static {v0, p1, p2}, Landroid/view/DisplayCutout$ParcelableWrapper;->writeCutoutToParcel(Landroid/view/DisplayCutout;Landroid/os/Parcel;I)V

    return-void
.end method
