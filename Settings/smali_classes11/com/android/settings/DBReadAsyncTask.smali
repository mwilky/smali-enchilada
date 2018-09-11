.class public Lcom/android/settings/DBReadAsyncTask;
.super Landroid/os/AsyncTask;
.source "DBReadAsyncTask.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# static fields
.field public static final AUTHORITY:Ljava/lang/String; = "com.qti.smq.Feedback.provider"

.field public static final KEY_VALUE:Ljava/lang/String; = "app_status"

.field public static final SMQ_KEY_VALUE:Ljava/lang/String; = "app_status"


# instance fields
.field final CONTENT_URI:Landroid/net/Uri;

.field final SNAP_CONTENT_URI:Landroid/net/Uri;

.field mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "mContext"    # Landroid/content/Context;

    .line 64
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 52
    const-string v0, "content://com.qti.smq.Feedback.provider"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/DBReadAsyncTask;->CONTENT_URI:Landroid/net/Uri;

    .line 56
    iget-object v0, p0, Lcom/android/settings/DBReadAsyncTask;->CONTENT_URI:Landroid/net/Uri;

    const-string v1, "smq_settings"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/DBReadAsyncTask;->SNAP_CONTENT_URI:Landroid/net/Uri;

    .line 65
    iput-object p1, p0, Lcom/android/settings/DBReadAsyncTask;->mContext:Landroid/content/Context;

    .line 66
    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;
    .locals 9
    .param p1, "params"    # [Ljava/lang/Void;

    .line 70
    const-string v0, "key=?"

    .line 71
    .local v0, "whereClause":Ljava/lang/String;
    const-string v1, "app_status"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v6

    .line 73
    .local v6, "selectionArgs":[Ljava/lang/String;
    iget-object v1, p0, Lcom/android/settings/DBReadAsyncTask;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/DBReadAsyncTask;->SNAP_CONTENT_URI:Landroid/net/Uri;

    const-string v5, "key=?"

    const/4 v4, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 76
    .local v1, "c":Landroid/database/Cursor;
    iget-object v2, p0, Lcom/android/settings/DBReadAsyncTask;->mContext:Landroid/content/Context;

    const-string v3, "smqpreferences"

    .line 77
    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 79
    .local v2, "sharedPreferences":Landroid/content/SharedPreferences;
    const/4 v3, 0x1

    if-eqz v1, :cond_1

    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v5

    if-lez v5, :cond_1

    .line 80
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    .line 81
    invoke-interface {v1, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    .line 83
    .local v5, "value":I
    const-string v7, "app_status"

    invoke-interface {v2, v7, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v4

    .line 84
    .local v4, "appStatus":I
    if-ne v4, v5, :cond_0

    .end local v4    # "appStatus":I
    .end local v5    # "value":I
    goto :goto_0

    .line 88
    .restart local v4    # "appStatus":I
    .restart local v5    # "value":I
    :cond_0
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v7

    .line 89
    .local v7, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v8, "app_status"

    invoke-interface {v7, v8, v5}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 90
    invoke-interface {v7}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 94
    .end local v4    # "appStatus":I
    .end local v5    # "value":I
    .end local v7    # "editor":Landroid/content/SharedPreferences$Editor;
    :goto_0
    goto :goto_1

    .line 97
    :cond_1
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v5

    .line 98
    .local v5, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v7, "app_status"

    invoke-interface {v5, v7, v4}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 99
    invoke-interface {v5}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 101
    .end local v5    # "editor":Landroid/content/SharedPreferences$Editor;
    :goto_1
    if-eqz v1, :cond_2

    .line 102
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 105
    :cond_2
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    return-object v3
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 38
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/android/settings/DBReadAsyncTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method
