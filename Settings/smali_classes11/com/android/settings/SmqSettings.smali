.class public Lcom/android/settings/SmqSettings;
.super Ljava/lang/Object;
.source "SmqSettings.java"


# static fields
.field public static final SMQ_KEY_VALUE:Ljava/lang/String; = "app_status"

.field public static final SMQ_PREFS_NAME:Ljava/lang/String; = "smqpreferences"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mSmqPreferences:Landroid/content/SharedPreferences;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    iput-object p1, p0, Lcom/android/settings/SmqSettings;->mContext:Landroid/content/Context;

    .line 54
    new-instance v0, Lcom/android/settings/DBReadAsyncTask;

    iget-object v1, p0, Lcom/android/settings/SmqSettings;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/settings/DBReadAsyncTask;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v2}, Lcom/android/settings/DBReadAsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 55
    iget-object v0, p0, Lcom/android/settings/SmqSettings;->mContext:Landroid/content/Context;

    const-string v2, "smqpreferences"

    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/SmqSettings;->mSmqPreferences:Landroid/content/SharedPreferences;

    .line 57
    return-void
.end method


# virtual methods
.method public isShowSmqSettings()Z
    .locals 3

    .line 60
    iget-object v0, p0, Lcom/android/settings/SmqSettings;->mSmqPreferences:Landroid/content/SharedPreferences;

    const-string v1, "app_status"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 61
    .local v0, "iShowSmq":I
    if-lez v0, :cond_0

    const/4 v2, 0x1

    nop

    :cond_0
    move v1, v2

    .line 62
    .local v1, "showSmq":Z
    return v1
.end method
