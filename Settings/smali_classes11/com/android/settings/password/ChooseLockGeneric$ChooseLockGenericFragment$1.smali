.class Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment$1;
.super Ljava/lang/Object;
.source "ChooseLockGeneric.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;


# direct methods
.method constructor <init>(Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;

    .line 183
    iput-object p1, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment$1;->this$0:Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 2
    .param p1, "className"    # Landroid/content/ComponentName;
    .param p2, "service"    # Landroid/os/IBinder;

    .line 186
    const-string v0, "ChooseLockGenericFragment"

    const-string v1, "Oneplus face unlock service connected"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 187
    iget-object v0, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment$1;->this$0:Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;

    invoke-static {p2}, Lcom/oneplus/faceunlock/internal/IOPFaceSettingService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/oneplus/faceunlock/internal/IOPFaceSettingService;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->access$002(Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;Lcom/oneplus/faceunlock/internal/IOPFaceSettingService;)Lcom/oneplus/faceunlock/internal/IOPFaceSettingService;

    .line 188
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2
    .param p1, "className"    # Landroid/content/ComponentName;

    .line 191
    const-string v0, "ChooseLockGenericFragment"

    const-string v1, "Oneplus face unlock service disconnected"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 192
    iget-object v0, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment$1;->this$0:Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->access$002(Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;Lcom/oneplus/faceunlock/internal/IOPFaceSettingService;)Lcom/oneplus/faceunlock/internal/IOPFaceSettingService;

    .line 193
    return-void
.end method
