.class Lcom/android/server/ConnectivityService$6;
.super Ljava/lang/Thread;
.source "ConnectivityService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/ConnectivityService;->startTethering(ILandroid/os/ResultReceiver;ZLjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/ConnectivityService;

.field final synthetic val$callerPkg:Ljava/lang/String;

.field final synthetic val$mgr:Landroid/net/wifi/WifiManager;

.field final synthetic val$receiver:Landroid/os/ResultReceiver;

.field final synthetic val$showProvisioningUi:Z

.field final synthetic val$type:I


# direct methods
.method constructor <init>(Lcom/android/server/ConnectivityService;ILandroid/net/wifi/WifiManager;Landroid/os/ResultReceiver;ZLjava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/ConnectivityService;

    .line 3361
    iput-object p1, p0, Lcom/android/server/ConnectivityService$6;->this$0:Lcom/android/server/ConnectivityService;

    iput p2, p0, Lcom/android/server/ConnectivityService$6;->val$type:I

    iput-object p3, p0, Lcom/android/server/ConnectivityService$6;->val$mgr:Landroid/net/wifi/WifiManager;

    iput-object p4, p0, Lcom/android/server/ConnectivityService$6;->val$receiver:Landroid/os/ResultReceiver;

    iput-boolean p5, p0, Lcom/android/server/ConnectivityService$6;->val$showProvisioningUi:Z

    iput-object p6, p0, Lcom/android/server/ConnectivityService$6;->val$callerPkg:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 3363
    invoke-static {}, Landroid/os/Looper;->prepare()V

    .line 3364
    iget-object v0, p0, Lcom/android/server/ConnectivityService$6;->this$0:Lcom/android/server/ConnectivityService;

    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/android/server/ConnectivityService$6;->this$0:Lcom/android/server/ConnectivityService;

    invoke-static {v2}, Lcom/android/server/ConnectivityService;->access$2600(Lcom/android/server/ConnectivityService;)Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iget-object v2, p0, Lcom/android/server/ConnectivityService$6;->this$0:Lcom/android/server/ConnectivityService;

    .line 3365
    invoke-static {v2}, Lcom/android/server/ConnectivityService;->access$2600(Lcom/android/server/ConnectivityService;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x50c004b

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/ConnectivityService$6;->this$0:Lcom/android/server/ConnectivityService;

    .line 3366
    invoke-static {v2}, Lcom/android/server/ConnectivityService;->access$2600(Lcom/android/server/ConnectivityService;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x50c004a

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/ConnectivityService$6;->this$0:Lcom/android/server/ConnectivityService;

    .line 3367
    invoke-static {v2}, Lcom/android/server/ConnectivityService;->access$2600(Lcom/android/server/ConnectivityService;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x104000a

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/android/server/ConnectivityService$6$1;

    invoke-direct {v3, p0}, Lcom/android/server/ConnectivityService$6$1;-><init>(Lcom/android/server/ConnectivityService$6;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 3376
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 3377
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    iput-object v1, v0, Lcom/android/server/ConnectivityService;->mDialog:Landroid/app/AlertDialog;

    .line 3379
    iget-object v0, p0, Lcom/android/server/ConnectivityService$6;->this$0:Lcom/android/server/ConnectivityService;

    iget-object v0, v0, Lcom/android/server/ConnectivityService;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 3380
    const v1, 0x1090032

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 3381
    .local v0, "checkBoxPanel":Landroid/view/View;
    const v1, 0x10201a7

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckBox;

    .line 3382
    .local v1, "checkBox":Landroid/widget/CheckBox;
    new-instance v3, Lcom/android/server/ConnectivityService$6$2;

    invoke-direct {v3, p0}, Lcom/android/server/ConnectivityService$6$2;-><init>(Lcom/android/server/ConnectivityService$6;)V

    invoke-virtual {v1, v3}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 3390
    invoke-virtual {v1, v2}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 3391
    iget-object v3, p0, Lcom/android/server/ConnectivityService$6;->this$0:Lcom/android/server/ConnectivityService;

    invoke-static {v3}, Lcom/android/server/ConnectivityService;->access$2600(Lcom/android/server/ConnectivityService;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x50c0049

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/CheckBox;->setText(Ljava/lang/CharSequence;)V

    .line 3392
    iget-object v3, p0, Lcom/android/server/ConnectivityService$6;->this$0:Lcom/android/server/ConnectivityService;

    iget-object v3, v3, Lcom/android/server/ConnectivityService;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v3, v0}, Landroid/app/AlertDialog;->setView(Landroid/view/View;)V

    .line 3393
    iget-object v3, p0, Lcom/android/server/ConnectivityService$6;->this$0:Lcom/android/server/ConnectivityService;

    iget-object v3, v3, Lcom/android/server/ConnectivityService;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v3, v2}, Landroid/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 3394
    iget-object v2, p0, Lcom/android/server/ConnectivityService$6;->this$0:Lcom/android/server/ConnectivityService;

    iget-object v2, v2, Lcom/android/server/ConnectivityService;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v2}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    const/16 v3, 0x7d3

    invoke-virtual {v2, v3}, Landroid/view/Window;->setType(I)V

    .line 3395
    iget-object v2, p0, Lcom/android/server/ConnectivityService$6;->this$0:Lcom/android/server/ConnectivityService;

    iget-object v2, v2, Lcom/android/server/ConnectivityService;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v2}, Landroid/app/AlertDialog;->show()V

    .line 3396
    invoke-static {}, Landroid/os/Looper;->loop()V

    .line 3397
    return-void
.end method
