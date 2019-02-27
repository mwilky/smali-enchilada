.class public abstract Landroid/print/ILayoutResultCallback$Stub;
.super Landroid/os/Binder;
.source "ILayoutResultCallback.java"

# interfaces
.implements Landroid/print/ILayoutResultCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/print/ILayoutResultCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/print/ILayoutResultCallback$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.print.ILayoutResultCallback"

.field static final TRANSACTION_onLayoutCanceled:I = 0x4

.field static final TRANSACTION_onLayoutFailed:I = 0x3

.field static final TRANSACTION_onLayoutFinished:I = 0x2

.field static final TRANSACTION_onLayoutStarted:I = 0x1


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 19
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 20
    const-string v0, "android.print.ILayoutResultCallback"

    invoke-virtual {p0, p0, v0}, Landroid/print/ILayoutResultCallback$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 21
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/print/ILayoutResultCallback;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 28
    if-nez p0, :cond_0

    .line 29
    const/4 v0, 0x0

    return-object v0

    .line 31
    :cond_0
    const-string v0, "android.print.ILayoutResultCallback"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 32
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/print/ILayoutResultCallback;

    if-eqz v1, :cond_1

    .line 33
    move-object v1, v0

    check-cast v1, Landroid/print/ILayoutResultCallback;

    return-object v1

    .line 35
    :cond_1
    new-instance v1, Landroid/print/ILayoutResultCallback$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/print/ILayoutResultCallback$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .line 39
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 5
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 43
    const-string v0, "android.print.ILayoutResultCallback"

    .line 44
    .local v0, "descriptor":Ljava/lang/String;
    const v1, 0x5f4e5446

    const/4 v2, 0x1

    if-eq p1, v1, :cond_3

    const/4 v1, 0x0

    packed-switch p1, :pswitch_data_0

    .line 103
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 95
    :pswitch_0
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 97
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 98
    .local v1, "_arg0":I
    invoke-virtual {p0, v1}, Landroid/print/ILayoutResultCallback$Stub;->onLayoutCanceled(I)V

    .line 99
    return v2

    .line 80
    .end local v1    # "_arg0":I
    :pswitch_1
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 82
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_0

    .line 83
    sget-object v1, Landroid/text/TextUtils;->CHAR_SEQUENCE_CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    .local v1, "_arg0":Ljava/lang/CharSequence;
    goto :goto_0

    .line 86
    .end local v1    # "_arg0":Ljava/lang/CharSequence;
    :cond_0
    nop

    .line 89
    .restart local v1    # "_arg0":Ljava/lang/CharSequence;
    :goto_0
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 90
    .local v3, "_arg1":I
    invoke-virtual {p0, v1, v3}, Landroid/print/ILayoutResultCallback$Stub;->onLayoutFailed(Ljava/lang/CharSequence;I)V

    .line 91
    return v2

    .line 63
    .end local v1    # "_arg0":Ljava/lang/CharSequence;
    .end local v3    # "_arg1":I
    :pswitch_2
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 65
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_1

    .line 66
    sget-object v1, Landroid/print/PrintDocumentInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/print/PrintDocumentInfo;

    .local v1, "_arg0":Landroid/print/PrintDocumentInfo;
    goto :goto_1

    .line 69
    .end local v1    # "_arg0":Landroid/print/PrintDocumentInfo;
    :cond_1
    nop

    .line 72
    .restart local v1    # "_arg0":Landroid/print/PrintDocumentInfo;
    :goto_1
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_2

    move v3, v2

    goto :goto_2

    :cond_2
    const/4 v3, 0x0

    .line 74
    .local v3, "_arg1":Z
    :goto_2
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 75
    .local v4, "_arg2":I
    invoke-virtual {p0, v1, v3, v4}, Landroid/print/ILayoutResultCallback$Stub;->onLayoutFinished(Landroid/print/PrintDocumentInfo;ZI)V

    .line 76
    return v2

    .line 53
    .end local v1    # "_arg0":Landroid/print/PrintDocumentInfo;
    .end local v3    # "_arg1":Z
    .end local v4    # "_arg2":I
    :pswitch_3
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 55
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/os/ICancellationSignal$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/ICancellationSignal;

    move-result-object v1

    .line 57
    .local v1, "_arg0":Landroid/os/ICancellationSignal;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 58
    .local v3, "_arg1":I
    invoke-virtual {p0, v1, v3}, Landroid/print/ILayoutResultCallback$Stub;->onLayoutStarted(Landroid/os/ICancellationSignal;I)V

    .line 59
    return v2

    .line 48
    .end local v1    # "_arg0":Landroid/os/ICancellationSignal;
    .end local v3    # "_arg1":I
    :cond_3
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 49
    return v2

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
