.class Landroid/view/accessibility/IAccessibilityInteractionConnection$Stub$Proxy;
.super Ljava/lang/Object;
.source "IAccessibilityInteractionConnection.java"

# interfaces
.implements Landroid/view/accessibility/IAccessibilityInteractionConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/accessibility/IAccessibilityInteractionConnection$Stub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Proxy"
.end annotation


# instance fields
.field private mRemote:Landroid/os/IBinder;


# direct methods
.method constructor <init>(Landroid/os/IBinder;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/view/accessibility/IAccessibilityInteractionConnection$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 1

    iget-object v0, p0, Landroid/view/accessibility/IAccessibilityInteractionConnection$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-object v0
.end method

.method public findAccessibilityNodeInfoByAccessibilityId(JLandroid/graphics/Region;ILandroid/view/accessibility/IAccessibilityInteractionConnectionCallback;IIJLandroid/view/MagnificationSpec;Landroid/os/Bundle;)V
    .locals 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    move-object/from16 v1, p3

    move-object/from16 v2, p10

    move-object/from16 v3, p11

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    move-object v4, v0

    :try_start_0
    const-string v0, "android.view.accessibility.IAccessibilityInteractionConnection"

    invoke-virtual {v4, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_6

    move-wide/from16 v5, p1

    :try_start_1
    invoke-virtual {v4, v5, v6}, Landroid/os/Parcel;->writeLong(J)V

    const/4 v0, 0x1

    const/4 v7, 0x0

    if-eqz v1, :cond_0

    invoke-virtual {v4, v0}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v1, v4, v7}, Landroid/graphics/Region;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    :cond_0
    invoke-virtual {v4, v7}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_5

    :goto_0
    move/from16 v8, p4

    :try_start_2
    invoke-virtual {v4, v8}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v9, 0x0

    if-eqz p5, :cond_1

    invoke-interface/range {p5 .. p5}, Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v10

    goto :goto_1

    :cond_1
    move-object v10, v9

    :goto_1
    invoke-virtual {v4, v10}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_4

    move/from16 v10, p6

    :try_start_3
    invoke-virtual {v4, v10}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    move/from16 v11, p7

    :try_start_4
    invoke-virtual {v4, v11}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    move-wide/from16 v12, p8

    :try_start_5
    invoke-virtual {v4, v12, v13}, Landroid/os/Parcel;->writeLong(J)V

    if-eqz v2, :cond_2

    invoke-virtual {v4, v0}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v2, v4, v7}, Landroid/view/MagnificationSpec;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_2

    :cond_2
    invoke-virtual {v4, v7}, Landroid/os/Parcel;->writeInt(I)V

    :goto_2
    if-eqz v3, :cond_3

    invoke-virtual {v4, v0}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v3, v4, v7}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_3

    :cond_3
    invoke-virtual {v4, v7}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :goto_3
    move-object v7, p0

    :try_start_6
    iget-object v14, v7, Landroid/view/accessibility/IAccessibilityInteractionConnection$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    invoke-interface {v14, v0, v4, v9, v0}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    invoke-virtual {v4}, Landroid/os/Parcel;->recycle()V

    nop

    return-void

    :catchall_0
    move-exception v0

    goto :goto_8

    :catchall_1
    move-exception v0

    move-object v7, p0

    goto :goto_8

    :catchall_2
    move-exception v0

    move-object v7, p0

    goto :goto_7

    :catchall_3
    move-exception v0

    move-object v7, p0

    goto :goto_6

    :catchall_4
    move-exception v0

    move-object v7, p0

    goto :goto_5

    :catchall_5
    move-exception v0

    move-object v7, p0

    goto :goto_4

    :catchall_6
    move-exception v0

    move-object v7, p0

    move-wide/from16 v5, p1

    :goto_4
    move/from16 v8, p4

    :goto_5
    move/from16 v10, p6

    :goto_6
    move/from16 v11, p7

    :goto_7
    move-wide/from16 v12, p8

    :goto_8
    invoke-virtual {v4}, Landroid/os/Parcel;->recycle()V

    throw v0
.end method

.method public findAccessibilityNodeInfosByText(JLjava/lang/String;Landroid/graphics/Region;ILandroid/view/accessibility/IAccessibilityInteractionConnectionCallback;IIJLandroid/view/MagnificationSpec;)V
    .locals 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    move-object/from16 v1, p4

    move-object/from16 v2, p11

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    move-object v3, v0

    :try_start_0
    const-string v0, "android.view.accessibility.IAccessibilityInteractionConnection"

    invoke-virtual {v3, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_7

    move-wide/from16 v4, p1

    :try_start_1
    invoke-virtual {v3, v4, v5}, Landroid/os/Parcel;->writeLong(J)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_6

    move-object/from16 v6, p3

    :try_start_2
    invoke-virtual {v3, v6}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    const/4 v0, 0x1

    const/4 v7, 0x0

    if-eqz v1, :cond_0

    invoke-virtual {v3, v0}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v1, v3, v7}, Landroid/graphics/Region;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    :cond_0
    invoke-virtual {v3, v7}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_5

    :goto_0
    move/from16 v8, p5

    :try_start_3
    invoke-virtual {v3, v8}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v9, 0x0

    if-eqz p6, :cond_1

    invoke-interface/range {p6 .. p6}, Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v10

    goto :goto_1

    :cond_1
    move-object v10, v9

    :goto_1
    invoke-virtual {v3, v10}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_4

    move/from16 v10, p7

    :try_start_4
    invoke-virtual {v3, v10}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    move/from16 v11, p8

    :try_start_5
    invoke-virtual {v3, v11}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    move-wide/from16 v12, p9

    :try_start_6
    invoke-virtual {v3, v12, v13}, Landroid/os/Parcel;->writeLong(J)V

    if-eqz v2, :cond_2

    invoke-virtual {v3, v0}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v2, v3, v7}, Landroid/view/MagnificationSpec;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_2

    :cond_2
    invoke-virtual {v3, v7}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :goto_2
    move-object/from16 v7, p0

    :try_start_7
    iget-object v14, v7, Landroid/view/accessibility/IAccessibilityInteractionConnection$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v1, 0x3

    invoke-interface {v14, v1, v3, v9, v0}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    invoke-virtual {v3}, Landroid/os/Parcel;->recycle()V

    nop

    return-void

    :catchall_0
    move-exception v0

    goto :goto_8

    :catchall_1
    move-exception v0

    move-object/from16 v7, p0

    goto :goto_8

    :catchall_2
    move-exception v0

    move-object/from16 v7, p0

    goto :goto_7

    :catchall_3
    move-exception v0

    move-object/from16 v7, p0

    goto :goto_6

    :catchall_4
    move-exception v0

    move-object/from16 v7, p0

    goto :goto_5

    :catchall_5
    move-exception v0

    move-object/from16 v7, p0

    goto :goto_4

    :catchall_6
    move-exception v0

    move-object/from16 v7, p0

    goto :goto_3

    :catchall_7
    move-exception v0

    move-object/from16 v7, p0

    move-wide/from16 v4, p1

    :goto_3
    move-object/from16 v6, p3

    :goto_4
    move/from16 v8, p5

    :goto_5
    move/from16 v10, p7

    :goto_6
    move/from16 v11, p8

    :goto_7
    move-wide/from16 v12, p9

    :goto_8
    invoke-virtual {v3}, Landroid/os/Parcel;->recycle()V

    throw v0
.end method

.method public findAccessibilityNodeInfosByViewId(JLjava/lang/String;Landroid/graphics/Region;ILandroid/view/accessibility/IAccessibilityInteractionConnectionCallback;IIJLandroid/view/MagnificationSpec;)V
    .locals 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    move-object/from16 v1, p4

    move-object/from16 v2, p11

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    move-object v3, v0

    :try_start_0
    const-string v0, "android.view.accessibility.IAccessibilityInteractionConnection"

    invoke-virtual {v3, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_7

    move-wide/from16 v4, p1

    :try_start_1
    invoke-virtual {v3, v4, v5}, Landroid/os/Parcel;->writeLong(J)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_6

    move-object/from16 v6, p3

    :try_start_2
    invoke-virtual {v3, v6}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    const/4 v0, 0x1

    const/4 v7, 0x0

    if-eqz v1, :cond_0

    invoke-virtual {v3, v0}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v1, v3, v7}, Landroid/graphics/Region;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    :cond_0
    invoke-virtual {v3, v7}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_5

    :goto_0
    move/from16 v8, p5

    :try_start_3
    invoke-virtual {v3, v8}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v9, 0x0

    if-eqz p6, :cond_1

    invoke-interface/range {p6 .. p6}, Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v10

    goto :goto_1

    :cond_1
    move-object v10, v9

    :goto_1
    invoke-virtual {v3, v10}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_4

    move/from16 v10, p7

    :try_start_4
    invoke-virtual {v3, v10}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    move/from16 v11, p8

    :try_start_5
    invoke-virtual {v3, v11}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    move-wide/from16 v12, p9

    :try_start_6
    invoke-virtual {v3, v12, v13}, Landroid/os/Parcel;->writeLong(J)V

    if-eqz v2, :cond_2

    invoke-virtual {v3, v0}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v2, v3, v7}, Landroid/view/MagnificationSpec;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_2

    :cond_2
    invoke-virtual {v3, v7}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :goto_2
    move-object/from16 v7, p0

    :try_start_7
    iget-object v14, v7, Landroid/view/accessibility/IAccessibilityInteractionConnection$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v1, 0x2

    invoke-interface {v14, v1, v3, v9, v0}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    invoke-virtual {v3}, Landroid/os/Parcel;->recycle()V

    nop

    return-void

    :catchall_0
    move-exception v0

    goto :goto_8

    :catchall_1
    move-exception v0

    move-object/from16 v7, p0

    goto :goto_8

    :catchall_2
    move-exception v0

    move-object/from16 v7, p0

    goto :goto_7

    :catchall_3
    move-exception v0

    move-object/from16 v7, p0

    goto :goto_6

    :catchall_4
    move-exception v0

    move-object/from16 v7, p0

    goto :goto_5

    :catchall_5
    move-exception v0

    move-object/from16 v7, p0

    goto :goto_4

    :catchall_6
    move-exception v0

    move-object/from16 v7, p0

    goto :goto_3

    :catchall_7
    move-exception v0

    move-object/from16 v7, p0

    move-wide/from16 v4, p1

    :goto_3
    move-object/from16 v6, p3

    :goto_4
    move/from16 v8, p5

    :goto_5
    move/from16 v10, p7

    :goto_6
    move/from16 v11, p8

    :goto_7
    move-wide/from16 v12, p9

    :goto_8
    invoke-virtual {v3}, Landroid/os/Parcel;->recycle()V

    throw v0
.end method

.method public findFocus(JILandroid/graphics/Region;ILandroid/view/accessibility/IAccessibilityInteractionConnectionCallback;IIJLandroid/view/MagnificationSpec;)V
    .locals 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    move-object/from16 v1, p4

    move-object/from16 v2, p11

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    move-object v3, v0

    :try_start_0
    const-string v0, "android.view.accessibility.IAccessibilityInteractionConnection"

    invoke-virtual {v3, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_7

    move-wide/from16 v4, p1

    :try_start_1
    invoke-virtual {v3, v4, v5}, Landroid/os/Parcel;->writeLong(J)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_6

    move/from16 v6, p3

    :try_start_2
    invoke-virtual {v3, v6}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v0, 0x1

    const/4 v7, 0x0

    if-eqz v1, :cond_0

    invoke-virtual {v3, v0}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v1, v3, v7}, Landroid/graphics/Region;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    :cond_0
    invoke-virtual {v3, v7}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_5

    :goto_0
    move/from16 v8, p5

    :try_start_3
    invoke-virtual {v3, v8}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v9, 0x0

    if-eqz p6, :cond_1

    invoke-interface/range {p6 .. p6}, Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v10

    goto :goto_1

    :cond_1
    move-object v10, v9

    :goto_1
    invoke-virtual {v3, v10}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_4

    move/from16 v10, p7

    :try_start_4
    invoke-virtual {v3, v10}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    move/from16 v11, p8

    :try_start_5
    invoke-virtual {v3, v11}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    move-wide/from16 v12, p9

    :try_start_6
    invoke-virtual {v3, v12, v13}, Landroid/os/Parcel;->writeLong(J)V

    if-eqz v2, :cond_2

    invoke-virtual {v3, v0}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v2, v3, v7}, Landroid/view/MagnificationSpec;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_2

    :cond_2
    invoke-virtual {v3, v7}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :goto_2
    move-object/from16 v7, p0

    :try_start_7
    iget-object v14, v7, Landroid/view/accessibility/IAccessibilityInteractionConnection$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v1, 0x4

    invoke-interface {v14, v1, v3, v9, v0}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    invoke-virtual {v3}, Landroid/os/Parcel;->recycle()V

    nop

    return-void

    :catchall_0
    move-exception v0

    goto :goto_8

    :catchall_1
    move-exception v0

    move-object/from16 v7, p0

    goto :goto_8

    :catchall_2
    move-exception v0

    move-object/from16 v7, p0

    goto :goto_7

    :catchall_3
    move-exception v0

    move-object/from16 v7, p0

    goto :goto_6

    :catchall_4
    move-exception v0

    move-object/from16 v7, p0

    goto :goto_5

    :catchall_5
    move-exception v0

    move-object/from16 v7, p0

    goto :goto_4

    :catchall_6
    move-exception v0

    move-object/from16 v7, p0

    goto :goto_3

    :catchall_7
    move-exception v0

    move-object/from16 v7, p0

    move-wide/from16 v4, p1

    :goto_3
    move/from16 v6, p3

    :goto_4
    move/from16 v8, p5

    :goto_5
    move/from16 v10, p7

    :goto_6
    move/from16 v11, p8

    :goto_7
    move-wide/from16 v12, p9

    :goto_8
    invoke-virtual {v3}, Landroid/os/Parcel;->recycle()V

    throw v0
.end method

.method public focusSearch(JILandroid/graphics/Region;ILandroid/view/accessibility/IAccessibilityInteractionConnectionCallback;IIJLandroid/view/MagnificationSpec;)V
    .locals 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    move-object/from16 v1, p4

    move-object/from16 v2, p11

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    move-object v3, v0

    :try_start_0
    const-string v0, "android.view.accessibility.IAccessibilityInteractionConnection"

    invoke-virtual {v3, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_7

    move-wide/from16 v4, p1

    :try_start_1
    invoke-virtual {v3, v4, v5}, Landroid/os/Parcel;->writeLong(J)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_6

    move/from16 v6, p3

    :try_start_2
    invoke-virtual {v3, v6}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v0, 0x1

    const/4 v7, 0x0

    if-eqz v1, :cond_0

    invoke-virtual {v3, v0}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v1, v3, v7}, Landroid/graphics/Region;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    :cond_0
    invoke-virtual {v3, v7}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_5

    :goto_0
    move/from16 v8, p5

    :try_start_3
    invoke-virtual {v3, v8}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v9, 0x0

    if-eqz p6, :cond_1

    invoke-interface/range {p6 .. p6}, Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v10

    goto :goto_1

    :cond_1
    move-object v10, v9

    :goto_1
    invoke-virtual {v3, v10}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_4

    move/from16 v10, p7

    :try_start_4
    invoke-virtual {v3, v10}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    move/from16 v11, p8

    :try_start_5
    invoke-virtual {v3, v11}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    move-wide/from16 v12, p9

    :try_start_6
    invoke-virtual {v3, v12, v13}, Landroid/os/Parcel;->writeLong(J)V

    if-eqz v2, :cond_2

    invoke-virtual {v3, v0}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v2, v3, v7}, Landroid/view/MagnificationSpec;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_2

    :cond_2
    invoke-virtual {v3, v7}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :goto_2
    move-object/from16 v7, p0

    :try_start_7
    iget-object v14, v7, Landroid/view/accessibility/IAccessibilityInteractionConnection$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v1, 0x5

    invoke-interface {v14, v1, v3, v9, v0}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    invoke-virtual {v3}, Landroid/os/Parcel;->recycle()V

    nop

    return-void

    :catchall_0
    move-exception v0

    goto :goto_8

    :catchall_1
    move-exception v0

    move-object/from16 v7, p0

    goto :goto_8

    :catchall_2
    move-exception v0

    move-object/from16 v7, p0

    goto :goto_7

    :catchall_3
    move-exception v0

    move-object/from16 v7, p0

    goto :goto_6

    :catchall_4
    move-exception v0

    move-object/from16 v7, p0

    goto :goto_5

    :catchall_5
    move-exception v0

    move-object/from16 v7, p0

    goto :goto_4

    :catchall_6
    move-exception v0

    move-object/from16 v7, p0

    goto :goto_3

    :catchall_7
    move-exception v0

    move-object/from16 v7, p0

    move-wide/from16 v4, p1

    :goto_3
    move/from16 v6, p3

    :goto_4
    move/from16 v8, p5

    :goto_5
    move/from16 v10, p7

    :goto_6
    move/from16 v11, p8

    :goto_7
    move-wide/from16 v12, p9

    :goto_8
    invoke-virtual {v3}, Landroid/os/Parcel;->recycle()V

    throw v0
.end method

.method public getInterfaceDescriptor()Ljava/lang/String;
    .locals 1

    const-string v0, "android.view.accessibility.IAccessibilityInteractionConnection"

    return-object v0
.end method

.method public performAccessibilityAction(JILandroid/os/Bundle;ILandroid/view/accessibility/IAccessibilityInteractionConnectionCallback;IIJ)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    :try_start_0
    const-string v1, "android.view.accessibility.IAccessibilityInteractionConnection"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    invoke-virtual {v0, p1, p2}, Landroid/os/Parcel;->writeLong(J)V

    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz p4, :cond_0

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {p4, v0, v1}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    :cond_0
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    :goto_0
    invoke-virtual {v0, p5}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v1, 0x0

    if-eqz p6, :cond_1

    invoke-interface {p6}, Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    goto :goto_1

    :cond_1
    move-object v3, v1

    :goto_1
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    invoke-virtual {v0, p7}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v0, p8}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v0, p9, p10}, Landroid/os/Parcel;->writeLong(J)V

    iget-object v3, p0, Landroid/view/accessibility/IAccessibilityInteractionConnection$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v4, 0x6

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    nop

    return-void

    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v1
.end method
