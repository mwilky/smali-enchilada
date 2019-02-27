.class public abstract Lcom/android/internal/textservice/ITextServicesManager$Stub;
.super Landroid/os/Binder;
.source "ITextServicesManager.java"

# interfaces
.implements Lcom/android/internal/textservice/ITextServicesManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/textservice/ITextServicesManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/textservice/ITextServicesManager$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.android.internal.textservice.ITextServicesManager"

.field static final TRANSACTION_finishSpellCheckerService:I = 0x4

.field static final TRANSACTION_getCurrentSpellChecker:I = 0x1

.field static final TRANSACTION_getCurrentSpellCheckerSubtype:I = 0x2

.field static final TRANSACTION_getEnabledSpellCheckers:I = 0x6

.field static final TRANSACTION_getSpellCheckerService:I = 0x3

.field static final TRANSACTION_isSpellCheckerEnabled:I = 0x5


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "com.android.internal.textservice.ITextServicesManager"

    invoke-virtual {p0, p0, v0}, Lcom/android/internal/textservice/ITextServicesManager$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/android/internal/textservice/ITextServicesManager;
    .locals 2

    if-nez p0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    const-string v0, "com.android.internal.textservice.ITextServicesManager"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/android/internal/textservice/ITextServicesManager;

    if-eqz v1, :cond_1

    move-object v1, v0

    check-cast v1, Lcom/android/internal/textservice/ITextServicesManager;

    return-object v1

    :cond_1
    new-instance v1, Lcom/android/internal/textservice/ITextServicesManager$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/android/internal/textservice/ITextServicesManager$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    move-object/from16 v6, p0

    move/from16 v7, p1

    move-object/from16 v8, p2

    move-object/from16 v9, p3

    const-string v10, "com.android.internal.textservice.ITextServicesManager"

    const v0, 0x5f4e5446

    const/4 v11, 0x1

    if-eq v7, v0, :cond_4

    const/4 v0, 0x0

    packed-switch v7, :pswitch_data_0

    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    return v0

    :pswitch_0
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/textservice/ITextServicesManager$Stub;->getEnabledSpellCheckers()[Landroid/view/textservice/SpellCheckerInfo;

    move-result-object v0

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v9, v0, v11}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    return v11

    :pswitch_1
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/textservice/ITextServicesManager$Stub;->isSpellCheckerEnabled()Z

    move-result v0

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v9, v0}, Landroid/os/Parcel;->writeInt(I)V

    return v11

    :pswitch_2
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/textservice/ISpellCheckerSessionListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/textservice/ISpellCheckerSessionListener;

    move-result-object v0

    invoke-virtual {v6, v0}, Lcom/android/internal/textservice/ITextServicesManager$Stub;->finishSpellCheckerService(Lcom/android/internal/textservice/ISpellCheckerSessionListener;)V

    return v11

    :pswitch_3
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/textservice/ITextServicesSessionListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/textservice/ITextServicesSessionListener;

    move-result-object v14

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/textservice/ISpellCheckerSessionListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/textservice/ISpellCheckerSessionListener;

    move-result-object v15

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v8}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    :goto_0
    move-object v5, v0

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :goto_1
    move-object v0, v6

    move-object v1, v12

    move-object v2, v13

    move-object v3, v14

    move-object v4, v15

    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/textservice/ITextServicesManager$Stub;->getSpellCheckerService(Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/textservice/ITextServicesSessionListener;Lcom/android/internal/textservice/ISpellCheckerSessionListener;Landroid/os/Bundle;)V

    return v11

    :pswitch_4
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_1

    move v2, v11

    goto :goto_2

    :cond_1
    move v2, v0

    :goto_2
    invoke-virtual {v6, v1, v2}, Lcom/android/internal/textservice/ITextServicesManager$Stub;->getCurrentSpellCheckerSubtype(Ljava/lang/String;Z)Landroid/view/textservice/SpellCheckerSubtype;

    move-result-object v3

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v3, :cond_2

    invoke-virtual {v9, v11}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v3, v9, v11}, Landroid/view/textservice/SpellCheckerSubtype;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_3

    :cond_2
    invoke-virtual {v9, v0}, Landroid/os/Parcel;->writeInt(I)V

    :goto_3
    return v11

    :pswitch_5
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v1}, Lcom/android/internal/textservice/ITextServicesManager$Stub;->getCurrentSpellChecker(Ljava/lang/String;)Landroid/view/textservice/SpellCheckerInfo;

    move-result-object v2

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v2, :cond_3

    invoke-virtual {v9, v11}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v2, v9, v11}, Landroid/view/textservice/SpellCheckerInfo;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_4

    :cond_3
    invoke-virtual {v9, v0}, Landroid/os/Parcel;->writeInt(I)V

    :goto_4
    return v11

    :cond_4
    invoke-virtual {v9, v10}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v11

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
