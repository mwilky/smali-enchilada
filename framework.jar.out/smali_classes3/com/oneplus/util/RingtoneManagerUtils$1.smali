.class Lcom/oneplus/util/RingtoneManagerUtils$1;
.super Ljava/lang/Object;
.source "RingtoneManagerUtils.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/util/RingtoneManagerUtils;->validForSound(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$client:Landroid/content/ContentProviderClient;

.field final synthetic val$ringtone_uri:Landroid/net/Uri;


# direct methods
.method constructor <init>(Landroid/content/ContentProviderClient;Landroid/net/Uri;)V
    .locals 0

    .line 193
    iput-object p1, p0, Lcom/oneplus/util/RingtoneManagerUtils$1;->val$client:Landroid/content/ContentProviderClient;

    iput-object p2, p0, Lcom/oneplus/util/RingtoneManagerUtils$1;->val$ringtone_uri:Landroid/net/Uri;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 196
    :try_start_0
    invoke-static {}, Lcom/oneplus/util/RingtoneManagerUtils;->access$000()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "RingtoneManagerUtils"

    const-string v1, "validForSound: refreshing database."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 197
    :cond_0
    iget-object v0, p0, Lcom/oneplus/util/RingtoneManagerUtils$1;->val$client:Landroid/content/ContentProviderClient;

    iget-object v1, p0, Lcom/oneplus/util/RingtoneManagerUtils$1;->val$ringtone_uri:Landroid/net/Uri;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, v2}, Landroid/content/ContentProviderClient;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 200
    goto :goto_0

    .line 198
    :catch_0
    move-exception v0

    .line 199
    .local v0, "ex":Ljava/lang/Exception;
    const-string v1, "Thread fail"

    invoke-static {v1, v0}, Lcom/oneplus/util/RingtoneManagerUtils;->access$100(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 201
    .end local v0    # "ex":Ljava/lang/Exception;
    :goto_0
    return-void
.end method
