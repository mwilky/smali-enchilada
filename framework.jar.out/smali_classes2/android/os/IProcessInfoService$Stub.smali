.class public abstract Landroid/os/IProcessInfoService$Stub;
.super Landroid/os/Binder;
.source "IProcessInfoService.java"

# interfaces
.implements Landroid/os/IProcessInfoService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/IProcessInfoService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/IProcessInfoService$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.os.IProcessInfoService"

.field static final TRANSACTION_getProcessStatesAndOomScoresFromPids:I = 0x2

.field static final TRANSACTION_getProcessStatesFromPids:I = 0x1


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "android.os.IProcessInfoService"

    invoke-virtual {p0, p0, v0}, Landroid/os/IProcessInfoService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/os/IProcessInfoService;
    .locals 2

    if-nez p0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    const-string v0, "android.os.IProcessInfoService"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/os/IProcessInfoService;

    if-eqz v1, :cond_1

    move-object v1, v0

    check-cast v1, Landroid/os/IProcessInfoService;

    return-object v1

    :cond_1
    new-instance v1, Landroid/os/IProcessInfoService$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/os/IProcessInfoService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string v0, "android.os.IProcessInfoService"

    const v1, 0x5f4e5446

    const/4 v2, 0x1

    if-eq p1, v1, :cond_3

    packed-switch p1, :pswitch_data_0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    :pswitch_0
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v1

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-gez v3, :cond_0

    const/4 v4, 0x0

    goto :goto_0

    :cond_0
    new-array v4, v3, [I

    :goto_0
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-gez v5, :cond_1

    const/4 v6, 0x0

    goto :goto_1

    :cond_1
    new-array v6, v5, [I

    :goto_1
    invoke-virtual {p0, v1, v4, v6}, Landroid/os/IProcessInfoService$Stub;->getProcessStatesAndOomScoresFromPids([I[I[I)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeIntArray([I)V

    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeIntArray([I)V

    return v2

    :pswitch_1
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v1

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-gez v3, :cond_2

    const/4 v4, 0x0

    goto :goto_2

    :cond_2
    new-array v4, v3, [I

    :goto_2
    invoke-virtual {p0, v1, v4}, Landroid/os/IProcessInfoService$Stub;->getProcessStatesFromPids([I[I)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeIntArray([I)V

    return v2

    :cond_3
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v2

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
