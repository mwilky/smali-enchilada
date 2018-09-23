.class Lcom/android/settingslib/core/instrumentation/SharedPreferencesLogger$AsyncPackageCheck;
.super Landroid/os/AsyncTask;
.source "SharedPreferencesLogger.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settingslib/core/instrumentation/SharedPreferencesLogger;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AsyncPackageCheck"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/String;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settingslib/core/instrumentation/SharedPreferencesLogger;


# direct methods
.method private constructor <init>(Lcom/android/settingslib/core/instrumentation/SharedPreferencesLogger;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settingslib/core/instrumentation/SharedPreferencesLogger$AsyncPackageCheck;->this$0:Lcom/android/settingslib/core/instrumentation/SharedPreferencesLogger;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/settingslib/core/instrumentation/SharedPreferencesLogger;Lcom/android/settingslib/core/instrumentation/SharedPreferencesLogger$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settingslib/core/instrumentation/SharedPreferencesLogger$AsyncPackageCheck;-><init>(Lcom/android/settingslib/core/instrumentation/SharedPreferencesLogger;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/android/settingslib/core/instrumentation/SharedPreferencesLogger$AsyncPackageCheck;->doInBackground([Ljava/lang/String;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method protected varargs doInBackground([Ljava/lang/String;)Ljava/lang/Void;
    .locals 6

    const/4 v0, 0x0

    aget-object v0, p1, v0

    const/4 v1, 0x1

    aget-object v2, p1, v1

    iget-object v3, p0, Lcom/android/settingslib/core/instrumentation/SharedPreferencesLogger$AsyncPackageCheck;->this$0:Lcom/android/settingslib/core/instrumentation/SharedPreferencesLogger;

    invoke-static {v3}, Lcom/android/settingslib/core/instrumentation/SharedPreferencesLogger;->access$100(Lcom/android/settingslib/core/instrumentation/SharedPreferencesLogger;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    :try_start_0
    invoke-static {v2}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v4

    if-eqz v2, :cond_0

    invoke-virtual {v4}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v5
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v2, v5

    :cond_0
    goto :goto_0

    :catch_0
    move-exception v4

    :goto_0
    const/high16 v4, 0x400000

    :try_start_1
    invoke-virtual {v3, v2, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    iget-object v4, p0, Lcom/android/settingslib/core/instrumentation/SharedPreferencesLogger$AsyncPackageCheck;->this$0:Lcom/android/settingslib/core/instrumentation/SharedPreferencesLogger;

    invoke-virtual {v4, v0, v2}, Lcom/android/settingslib/core/instrumentation/SharedPreferencesLogger;->logPackageName(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v4

    iget-object v5, p0, Lcom/android/settingslib/core/instrumentation/SharedPreferencesLogger$AsyncPackageCheck;->this$0:Lcom/android/settingslib/core/instrumentation/SharedPreferencesLogger;

    invoke-static {v5, v0, v2, v1}, Lcom/android/settingslib/core/instrumentation/SharedPreferencesLogger;->access$200(Lcom/android/settingslib/core/instrumentation/SharedPreferencesLogger;Ljava/lang/String;Ljava/lang/Object;Z)V

    :goto_1
    const/4 v1, 0x0

    return-object v1
.end method
