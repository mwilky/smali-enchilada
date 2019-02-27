.class public Landroid/view/RemoteAnimationDefinition;
.super Ljava/lang/Object;
.source "RemoteAnimationDefinition.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/RemoteAnimationDefinition$RemoteAnimationAdapterEntry;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/view/RemoteAnimationDefinition;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mTransitionAnimationMap:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/view/RemoteAnimationDefinition$RemoteAnimationAdapterEntry;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroid/view/RemoteAnimationDefinition$1;

    invoke-direct {v0}, Landroid/view/RemoteAnimationDefinition$1;-><init>()V

    sput-object v0, Landroid/view/RemoteAnimationDefinition;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Landroid/view/RemoteAnimationDefinition;->mTransitionAnimationMap:Landroid/util/SparseArray;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1, v0}, Landroid/util/SparseArray;-><init>(I)V

    iput-object v1, p0, Landroid/view/RemoteAnimationDefinition;->mTransitionAnimationMap:Landroid/util/SparseArray;

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    nop

    invoke-static {}, Landroid/view/RemoteAnimationDefinition$RemoteAnimationAdapterEntry;->access$000()Landroid/os/Parcelable$Creator;

    move-result-object v3

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/RemoteAnimationDefinition$RemoteAnimationAdapterEntry;

    iget-object v4, p0, Landroid/view/RemoteAnimationDefinition;->mTransitionAnimationMap:Landroid/util/SparseArray;

    invoke-virtual {v4, v2, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public addRemoteAnimation(IILandroid/view/RemoteAnimationAdapter;)V
    .locals 2
    .param p2    # I
        .annotation build Landroid/app/WindowConfiguration$ActivityType;
        .end annotation
    .end param

    iget-object v0, p0, Landroid/view/RemoteAnimationDefinition;->mTransitionAnimationMap:Landroid/util/SparseArray;

    new-instance v1, Landroid/view/RemoteAnimationDefinition$RemoteAnimationAdapterEntry;

    invoke-direct {v1, p3, p2}, Landroid/view/RemoteAnimationDefinition$RemoteAnimationAdapterEntry;-><init>(Landroid/view/RemoteAnimationAdapter;I)V

    invoke-virtual {v0, p1, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-void
.end method

.method public addRemoteAnimation(ILandroid/view/RemoteAnimationAdapter;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p2}, Landroid/view/RemoteAnimationDefinition;->addRemoteAnimation(IILandroid/view/RemoteAnimationAdapter;)V

    return-void
.end method

.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getAdapter(ILandroid/util/ArraySet;)Landroid/view/RemoteAnimationAdapter;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/util/ArraySet<",
            "Ljava/lang/Integer;",
            ">;)",
            "Landroid/view/RemoteAnimationAdapter;"
        }
    .end annotation

    iget-object v0, p0, Landroid/view/RemoteAnimationDefinition;->mTransitionAnimationMap:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/RemoteAnimationDefinition$RemoteAnimationAdapterEntry;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    iget v2, v0, Landroid/view/RemoteAnimationDefinition$RemoteAnimationAdapterEntry;->activityTypeFilter:I

    if-eqz v2, :cond_2

    iget v2, v0, Landroid/view/RemoteAnimationDefinition$RemoteAnimationAdapterEntry;->activityTypeFilter:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p2, v2}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_0

    :cond_1
    return-object v1

    :cond_2
    :goto_0
    iget-object v1, v0, Landroid/view/RemoteAnimationDefinition$RemoteAnimationAdapterEntry;->adapter:Landroid/view/RemoteAnimationAdapter;

    return-object v1
.end method

.method public hasTransition(ILandroid/util/ArraySet;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/util/ArraySet<",
            "Ljava/lang/Integer;",
            ">;)Z"
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Landroid/view/RemoteAnimationDefinition;->getAdapter(ILandroid/util/ArraySet;)Landroid/view/RemoteAnimationAdapter;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public setCallingPid(I)V
    .locals 2

    iget-object v0, p0, Landroid/view/RemoteAnimationDefinition;->mTransitionAnimationMap:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_0

    iget-object v1, p0, Landroid/view/RemoteAnimationDefinition;->mTransitionAnimationMap:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/RemoteAnimationDefinition$RemoteAnimationAdapterEntry;

    iget-object v1, v1, Landroid/view/RemoteAnimationDefinition$RemoteAnimationAdapterEntry;->adapter:Landroid/view/RemoteAnimationAdapter;

    invoke-virtual {v1, p1}, Landroid/view/RemoteAnimationAdapter;->setCallingPid(I)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 3

    iget-object v0, p0, Landroid/view/RemoteAnimationDefinition;->mTransitionAnimationMap:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    iget-object v2, p0, Landroid/view/RemoteAnimationDefinition;->mTransitionAnimationMap:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v2

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v2, p0, Landroid/view/RemoteAnimationDefinition;->mTransitionAnimationMap:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/RemoteAnimationDefinition$RemoteAnimationAdapterEntry;

    invoke-virtual {p1, v2, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
