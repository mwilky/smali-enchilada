.class Lcom/android/settings/users/EditUserInfoController$2;
.super Ljava/lang/Object;
.source "EditUserInfoController.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/users/EditUserInfoController;->createDialog(Landroid/app/Fragment;Landroid/graphics/drawable/Drawable;Ljava/lang/CharSequence;ILcom/android/settings/users/EditUserInfoController$OnContentChangedCallback;Landroid/os/UserHandle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/users/EditUserInfoController;

.field final synthetic val$callback:Lcom/android/settings/users/EditUserInfoController$OnContentChangedCallback;

.field final synthetic val$currentUserIcon:Landroid/graphics/drawable/Drawable;

.field final synthetic val$currentUserName:Ljava/lang/CharSequence;

.field final synthetic val$fragment:Landroid/app/Fragment;

.field final synthetic val$userNameView:Landroid/widget/EditText;


# direct methods
.method constructor <init>(Lcom/android/settings/users/EditUserInfoController;Landroid/widget/EditText;Ljava/lang/CharSequence;Lcom/android/settings/users/EditUserInfoController$OnContentChangedCallback;Landroid/graphics/drawable/Drawable;Landroid/app/Fragment;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/users/EditUserInfoController$2;->this$0:Lcom/android/settings/users/EditUserInfoController;

    iput-object p2, p0, Lcom/android/settings/users/EditUserInfoController$2;->val$userNameView:Landroid/widget/EditText;

    iput-object p3, p0, Lcom/android/settings/users/EditUserInfoController$2;->val$currentUserName:Ljava/lang/CharSequence;

    iput-object p4, p0, Lcom/android/settings/users/EditUserInfoController$2;->val$callback:Lcom/android/settings/users/EditUserInfoController$OnContentChangedCallback;

    iput-object p5, p0, Lcom/android/settings/users/EditUserInfoController$2;->val$currentUserIcon:Landroid/graphics/drawable/Drawable;

    iput-object p6, p0, Lcom/android/settings/users/EditUserInfoController$2;->val$fragment:Landroid/app/Fragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 6

    const/4 v0, -0x1

    if-ne p2, v0, :cond_5

    iget-object v0, p0, Lcom/android/settings/users/EditUserInfoController$2;->val$userNameView:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/android/settings/users/EditUserInfoController$2;->val$currentUserName:Ljava/lang/CharSequence;

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/users/EditUserInfoController$2;->val$currentUserName:Ljava/lang/CharSequence;

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    :cond_0
    iget-object v1, p0, Lcom/android/settings/users/EditUserInfoController$2;->val$callback:Lcom/android/settings/users/EditUserInfoController$OnContentChangedCallback;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/settings/users/EditUserInfoController$2;->val$callback:Lcom/android/settings/users/EditUserInfoController$OnContentChangedCallback;

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/android/settings/users/EditUserInfoController$OnContentChangedCallback;->onLabelChanged(Ljava/lang/CharSequence;)V

    :cond_1
    iget-object v1, p0, Lcom/android/settings/users/EditUserInfoController$2;->this$0:Lcom/android/settings/users/EditUserInfoController;

    invoke-static {v1}, Lcom/android/settings/users/EditUserInfoController;->access$100(Lcom/android/settings/users/EditUserInfoController;)Landroid/os/UserManager;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/users/EditUserInfoController$2;->this$0:Lcom/android/settings/users/EditUserInfoController;

    invoke-static {v2}, Lcom/android/settings/users/EditUserInfoController;->access$000(Lcom/android/settings/users/EditUserInfoController;)Landroid/os/UserHandle;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v2

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/os/UserManager;->setUserName(ILjava/lang/String;)V

    :cond_2
    iget-object v1, p0, Lcom/android/settings/users/EditUserInfoController$2;->this$0:Lcom/android/settings/users/EditUserInfoController;

    invoke-static {v1}, Lcom/android/settings/users/EditUserInfoController;->access$200(Lcom/android/settings/users/EditUserInfoController;)Lcom/android/settings/users/EditUserPhotoController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/settings/users/EditUserPhotoController;->getNewUserPhotoDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/users/EditUserInfoController$2;->this$0:Lcom/android/settings/users/EditUserInfoController;

    invoke-static {v2}, Lcom/android/settings/users/EditUserInfoController;->access$200(Lcom/android/settings/users/EditUserInfoController;)Lcom/android/settings/users/EditUserPhotoController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/settings/users/EditUserPhotoController;->getNewUserPhotoBitmap()Landroid/graphics/Bitmap;

    move-result-object v2

    if-eqz v1, :cond_4

    if-eqz v2, :cond_4

    iget-object v3, p0, Lcom/android/settings/users/EditUserInfoController$2;->val$currentUserIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    iget-object v3, p0, Lcom/android/settings/users/EditUserInfoController$2;->val$callback:Lcom/android/settings/users/EditUserInfoController$OnContentChangedCallback;

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/android/settings/users/EditUserInfoController$2;->val$callback:Lcom/android/settings/users/EditUserInfoController$OnContentChangedCallback;

    invoke-interface {v3, v1}, Lcom/android/settings/users/EditUserInfoController$OnContentChangedCallback;->onPhotoChanged(Landroid/graphics/drawable/Drawable;)V

    :cond_3
    new-instance v3, Lcom/android/settings/users/EditUserInfoController$2$1;

    invoke-direct {v3, p0}, Lcom/android/settings/users/EditUserInfoController$2$1;-><init>(Lcom/android/settings/users/EditUserInfoController$2;)V

    sget-object v4, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v5, 0x0

    check-cast v5, [Ljava/lang/Void;

    invoke-virtual {v3, v4, v5}, Lcom/android/settings/users/EditUserInfoController$2$1;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    :cond_4
    iget-object v3, p0, Lcom/android/settings/users/EditUserInfoController$2;->val$fragment:Landroid/app/Fragment;

    invoke-virtual {v3}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/app/Activity;->removeDialog(I)V

    :cond_5
    iget-object v0, p0, Lcom/android/settings/users/EditUserInfoController$2;->this$0:Lcom/android/settings/users/EditUserInfoController;

    invoke-virtual {v0}, Lcom/android/settings/users/EditUserInfoController;->clear()V

    return-void
.end method
