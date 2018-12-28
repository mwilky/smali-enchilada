.class Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$1;
.super Ljava/lang/Object;
.source "LauncherAppsService.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;


# direct methods
.method constructor <init>(Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$1;->this$0:Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .locals 8

    iget v0, p1, Landroid/os/Message;->arg1:I

    const/4 v1, 0x2

    if-ne v1, v0, :cond_0

    iget-object v2, p0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$1;->this$0:Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;

    const v3, 0x50c0050

    const v4, 0x50c004f

    const v5, 0x50c004e

    const v6, 0x50c0049

    new-instance v7, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$1$1;

    invoke-direct {v7, p0}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$1$1;-><init>(Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$1;)V

    invoke-static/range {v2 .. v7}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->access$100(Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;IIIILandroid/content/DialogInterface$OnClickListener;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    iget v1, p1, Landroid/os/Message;->arg1:I

    if-ne v0, v1, :cond_1

    iget-object v2, p0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$1;->this$0:Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;

    const v3, 0x50c004c

    const v4, 0x50c004a

    const v5, 0x50c004b

    const v6, 0x50c0049

    new-instance v7, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$1$2;

    invoke-direct {v7, p0}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$1$2;-><init>(Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$1;)V

    invoke-static/range {v2 .. v7}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->access$100(Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;IIIILandroid/content/DialogInterface$OnClickListener;)V

    :cond_1
    :goto_0
    const/4 v0, 0x0

    return v0
.end method
