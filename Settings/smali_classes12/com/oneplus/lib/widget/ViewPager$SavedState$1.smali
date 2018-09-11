.class Lcom/oneplus/lib/widget/ViewPager$SavedState$1;
.super Ljava/lang/Object;
.source "ViewPager.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/lib/widget/ViewPager$SavedState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/oneplus/lib/widget/ViewPager$SavedState;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 1215
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/oneplus/lib/widget/ViewPager$SavedState;
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .line 1218
    new-instance v0, Lcom/oneplus/lib/widget/ViewPager$SavedState;

    invoke-direct {v0, p1}, Lcom/oneplus/lib/widget/ViewPager$SavedState;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 1215
    invoke-virtual {p0, p1}, Lcom/oneplus/lib/widget/ViewPager$SavedState$1;->createFromParcel(Landroid/os/Parcel;)Lcom/oneplus/lib/widget/ViewPager$SavedState;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Lcom/oneplus/lib/widget/ViewPager$SavedState;
    .locals 1
    .param p1, "size"    # I

    .line 1222
    new-array v0, p1, [Lcom/oneplus/lib/widget/ViewPager$SavedState;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 1215
    invoke-virtual {p0, p1}, Lcom/oneplus/lib/widget/ViewPager$SavedState$1;->newArray(I)[Lcom/oneplus/lib/widget/ViewPager$SavedState;

    move-result-object p1

    return-object p1
.end method
