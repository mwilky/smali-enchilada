.class public final Landroid/view/DragAndDropPermissions;
.super Ljava/lang/Object;
.source "DragAndDropPermissions.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/view/DragAndDropPermissions;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mDragAndDropPermissions:Lcom/android/internal/view/IDragAndDropPermissions;

.field private mTransientToken:Landroid/os/IBinder;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroid/view/DragAndDropPermissions$1;

    invoke-direct {v0}, Landroid/view/DragAndDropPermissions$1;-><init>()V

    sput-object v0, Landroid/view/DragAndDropPermissions;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/view/IDragAndDropPermissions$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/view/IDragAndDropPermissions;

    move-result-object v0

    iput-object v0, p0, Landroid/view/DragAndDropPermissions;->mDragAndDropPermissions:Lcom/android/internal/view/IDragAndDropPermissions;

    invoke-virtual {p1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    iput-object v0, p0, Landroid/view/DragAndDropPermissions;->mTransientToken:Landroid/os/IBinder;

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Landroid/view/DragAndDropPermissions$1;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/view/DragAndDropPermissions;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method private constructor <init>(Lcom/android/internal/view/IDragAndDropPermissions;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/view/DragAndDropPermissions;->mDragAndDropPermissions:Lcom/android/internal/view/IDragAndDropPermissions;

    return-void
.end method

.method public static obtain(Landroid/view/DragEvent;)Landroid/view/DragAndDropPermissions;
    .locals 2

    invoke-virtual {p0}, Landroid/view/DragEvent;->getDragAndDropPermissions()Lcom/android/internal/view/IDragAndDropPermissions;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    new-instance v0, Landroid/view/DragAndDropPermissions;

    invoke-virtual {p0}, Landroid/view/DragEvent;->getDragAndDropPermissions()Lcom/android/internal/view/IDragAndDropPermissions;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/view/DragAndDropPermissions;-><init>(Lcom/android/internal/view/IDragAndDropPermissions;)V

    return-object v0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public release()V
    .locals 1

    :try_start_0
    iget-object v0, p0, Landroid/view/DragAndDropPermissions;->mDragAndDropPermissions:Lcom/android/internal/view/IDragAndDropPermissions;

    invoke-interface {v0}, Lcom/android/internal/view/IDragAndDropPermissions;->release()V

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/view/DragAndDropPermissions;->mTransientToken:Landroid/os/IBinder;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    :goto_0
    return-void
.end method

.method public take(Landroid/os/IBinder;)Z
    .locals 2

    :try_start_0
    iget-object v0, p0, Landroid/view/DragAndDropPermissions;->mDragAndDropPermissions:Lcom/android/internal/view/IDragAndDropPermissions;

    invoke-interface {v0, p1}, Lcom/android/internal/view/IDragAndDropPermissions;->take(Landroid/os/IBinder;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    nop

    const/4 v0, 0x1

    return v0

    :catch_0
    move-exception v0

    const/4 v1, 0x0

    return v1
.end method

.method public takeTransient()Z
    .locals 2

    :try_start_0
    new-instance v0, Landroid/os/Binder;

    invoke-direct {v0}, Landroid/os/Binder;-><init>()V

    iput-object v0, p0, Landroid/view/DragAndDropPermissions;->mTransientToken:Landroid/os/IBinder;

    iget-object v0, p0, Landroid/view/DragAndDropPermissions;->mDragAndDropPermissions:Lcom/android/internal/view/IDragAndDropPermissions;

    iget-object v1, p0, Landroid/view/DragAndDropPermissions;->mTransientToken:Landroid/os/IBinder;

    invoke-interface {v0, v1}, Lcom/android/internal/view/IDragAndDropPermissions;->takeTransient(Landroid/os/IBinder;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    nop

    const/4 v0, 0x1

    return v0

    :catch_0
    move-exception v0

    const/4 v1, 0x0

    return v1
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    iget-object v0, p0, Landroid/view/DragAndDropPermissions;->mDragAndDropPermissions:Lcom/android/internal/view/IDragAndDropPermissions;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    iget-object v0, p0, Landroid/view/DragAndDropPermissions;->mTransientToken:Landroid/os/IBinder;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    return-void
.end method
