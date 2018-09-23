.class Lcom/oneplus/settings/apploader/OPApplicationLoader$1;
.super Ljava/lang/Object;
.source "OPApplicationLoader.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/settings/apploader/OPApplicationLoader;->onPreExecute()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/settings/apploader/OPApplicationLoader;


# direct methods
.method constructor <init>(Lcom/oneplus/settings/apploader/OPApplicationLoader;)V
    .locals 0

    iput-object p1, p0, Lcom/oneplus/settings/apploader/OPApplicationLoader$1;->this$0:Lcom/oneplus/settings/apploader/OPApplicationLoader;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/oneplus/settings/apploader/OPApplicationLoader$1;->this$0:Lcom/oneplus/settings/apploader/OPApplicationLoader;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/oneplus/settings/apploader/OPApplicationLoader;->access$002(Lcom/oneplus/settings/apploader/OPApplicationLoader;Z)Z

    iget-object v0, p0, Lcom/oneplus/settings/apploader/OPApplicationLoader$1;->this$0:Lcom/oneplus/settings/apploader/OPApplicationLoader;

    invoke-static {v0}, Lcom/oneplus/settings/apploader/OPApplicationLoader;->access$100(Lcom/oneplus/settings/apploader/OPApplicationLoader;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/settings/apploader/OPApplicationLoader$1;->this$0:Lcom/oneplus/settings/apploader/OPApplicationLoader;

    invoke-static {v0}, Lcom/oneplus/settings/apploader/OPApplicationLoader;->access$100(Lcom/oneplus/settings/apploader/OPApplicationLoader;)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    iget-object v0, p0, Lcom/oneplus/settings/apploader/OPApplicationLoader$1;->this$0:Lcom/oneplus/settings/apploader/OPApplicationLoader;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Lcom/oneplus/settings/apploader/OPApplicationLoader;->access$202(Lcom/oneplus/settings/apploader/OPApplicationLoader;J)J

    return-void
.end method
