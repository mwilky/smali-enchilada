.class public Lcom/android/settingslib/core/instrumentation/SharedPreferencesLogger$EditorLogger;
.super Ljava/lang/Object;
.source "SharedPreferencesLogger.java"

# interfaces
.implements Landroid/content/SharedPreferences$Editor;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settingslib/core/instrumentation/SharedPreferencesLogger;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "EditorLogger"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settingslib/core/instrumentation/SharedPreferencesLogger;


# direct methods
.method public constructor <init>(Lcom/android/settingslib/core/instrumentation/SharedPreferencesLogger;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/settingslib/core/instrumentation/SharedPreferencesLogger;

    .line 203
    iput-object p1, p0, Lcom/android/settingslib/core/instrumentation/SharedPreferencesLogger$EditorLogger;->this$0:Lcom/android/settingslib/core/instrumentation/SharedPreferencesLogger;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public apply()V
    .locals 0

    .line 257
    return-void
.end method

.method public clear()Landroid/content/SharedPreferences$Editor;
    .locals 0

    .line 247
    return-object p0
.end method

.method public commit()Z
    .locals 1

    .line 252
    const/4 v0, 0x1

    return v0
.end method

.method public putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Z

    .line 236
    iget-object v0, p0, Lcom/android/settingslib/core/instrumentation/SharedPreferencesLogger$EditorLogger;->this$0:Lcom/android/settingslib/core/instrumentation/SharedPreferencesLogger;

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v0, p1, v1}, Lcom/android/settingslib/core/instrumentation/SharedPreferencesLogger;->access$400(Lcom/android/settingslib/core/instrumentation/SharedPreferencesLogger;Ljava/lang/String;Ljava/lang/Object;)V

    .line 237
    return-object p0
.end method

.method public putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # F

    .line 230
    iget-object v0, p0, Lcom/android/settingslib/core/instrumentation/SharedPreferencesLogger$EditorLogger;->this$0:Lcom/android/settingslib/core/instrumentation/SharedPreferencesLogger;

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-static {v0, p1, v1}, Lcom/android/settingslib/core/instrumentation/SharedPreferencesLogger;->access$400(Lcom/android/settingslib/core/instrumentation/SharedPreferencesLogger;Ljava/lang/String;Ljava/lang/Object;)V

    .line 231
    return-object p0
.end method

.method public putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # I

    .line 218
    iget-object v0, p0, Lcom/android/settingslib/core/instrumentation/SharedPreferencesLogger$EditorLogger;->this$0:Lcom/android/settingslib/core/instrumentation/SharedPreferencesLogger;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0, p1, v1}, Lcom/android/settingslib/core/instrumentation/SharedPreferencesLogger;->access$400(Lcom/android/settingslib/core/instrumentation/SharedPreferencesLogger;Ljava/lang/String;Ljava/lang/Object;)V

    .line 219
    return-object p0
.end method

.method public putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # J

    .line 224
    iget-object v0, p0, Lcom/android/settingslib/core/instrumentation/SharedPreferencesLogger$EditorLogger;->this$0:Lcom/android/settingslib/core/instrumentation/SharedPreferencesLogger;

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-static {v0, p1, v1}, Lcom/android/settingslib/core/instrumentation/SharedPreferencesLogger;->access$400(Lcom/android/settingslib/core/instrumentation/SharedPreferencesLogger;Ljava/lang/String;Ljava/lang/Object;)V

    .line 225
    return-object p0
.end method

.method public putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .line 206
    iget-object v0, p0, Lcom/android/settingslib/core/instrumentation/SharedPreferencesLogger$EditorLogger;->this$0:Lcom/android/settingslib/core/instrumentation/SharedPreferencesLogger;

    invoke-static {v0, p1, p2}, Lcom/android/settingslib/core/instrumentation/SharedPreferencesLogger;->access$300(Lcom/android/settingslib/core/instrumentation/SharedPreferencesLogger;Ljava/lang/String;Ljava/lang/String;)V

    .line 207
    return-object p0
.end method

.method public putStringSet(Ljava/lang/String;Ljava/util/Set;)Landroid/content/SharedPreferences$Editor;
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)",
            "Landroid/content/SharedPreferences$Editor;"
        }
    .end annotation

    .line 212
    .local p2, "values":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/android/settingslib/core/instrumentation/SharedPreferencesLogger$EditorLogger;->this$0:Lcom/android/settingslib/core/instrumentation/SharedPreferencesLogger;

    const-string v1, ","

    invoke-static {v1, p2}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, p1, v1}, Lcom/android/settingslib/core/instrumentation/SharedPreferencesLogger;->access$300(Lcom/android/settingslib/core/instrumentation/SharedPreferencesLogger;Ljava/lang/String;Ljava/lang/String;)V

    .line 213
    return-object p0
.end method

.method public remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;
    .locals 0
    .param p1, "key"    # Ljava/lang/String;

    .line 242
    return-object p0
.end method
