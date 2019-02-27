.class Landroid/content/pm/LauncherApps$1;
.super Landroid/content/pm/IOnAppsChangedListener$Stub;
.source "LauncherApps.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/content/pm/LauncherApps;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/content/pm/LauncherApps;


# direct methods
.method constructor <init>(Landroid/content/pm/LauncherApps;)V
    .locals 0
    .param p1, "this$0"    # Landroid/content/pm/LauncherApps;

    .line 1170
    iput-object p1, p0, Landroid/content/pm/LauncherApps$1;->this$0:Landroid/content/pm/LauncherApps;

    invoke-direct {p0}, Landroid/content/pm/IOnAppsChangedListener$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onPackageAdded(Landroid/os/UserHandle;Ljava/lang/String;)V
    .locals 3
    .param p1, "user"    # Landroid/os/UserHandle;
    .param p2, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1202
    iget-object v0, p0, Landroid/content/pm/LauncherApps$1;->this$0:Landroid/content/pm/LauncherApps;

    monitor-enter v0

    .line 1203
    :try_start_0
    iget-object v1, p0, Landroid/content/pm/LauncherApps$1;->this$0:Landroid/content/pm/LauncherApps;

    invoke-static {v1}, Landroid/content/pm/LauncherApps;->access$100(Landroid/content/pm/LauncherApps;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/LauncherApps$CallbackMessageHandler;

    .line 1204
    .local v2, "callback":Landroid/content/pm/LauncherApps$CallbackMessageHandler;
    invoke-virtual {v2, p2, p1}, Landroid/content/pm/LauncherApps$CallbackMessageHandler;->postOnPackageAdded(Ljava/lang/String;Landroid/os/UserHandle;)V

    .line 1205
    .end local v2    # "callback":Landroid/content/pm/LauncherApps$CallbackMessageHandler;
    goto :goto_0

    .line 1206
    :cond_0
    monitor-exit v0

    .line 1207
    return-void

    .line 1206
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public onPackageChanged(Landroid/os/UserHandle;Ljava/lang/String;)V
    .locals 3
    .param p1, "user"    # Landroid/os/UserHandle;
    .param p2, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1190
    iget-object v0, p0, Landroid/content/pm/LauncherApps$1;->this$0:Landroid/content/pm/LauncherApps;

    monitor-enter v0

    .line 1191
    :try_start_0
    iget-object v1, p0, Landroid/content/pm/LauncherApps$1;->this$0:Landroid/content/pm/LauncherApps;

    invoke-static {v1}, Landroid/content/pm/LauncherApps;->access$100(Landroid/content/pm/LauncherApps;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/LauncherApps$CallbackMessageHandler;

    .line 1192
    .local v2, "callback":Landroid/content/pm/LauncherApps$CallbackMessageHandler;
    invoke-virtual {v2, p2, p1}, Landroid/content/pm/LauncherApps$CallbackMessageHandler;->postOnPackageChanged(Ljava/lang/String;Landroid/os/UserHandle;)V

    .line 1193
    .end local v2    # "callback":Landroid/content/pm/LauncherApps$CallbackMessageHandler;
    goto :goto_0

    .line 1194
    :cond_0
    monitor-exit v0

    .line 1195
    return-void

    .line 1194
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public onPackageRemoved(Landroid/os/UserHandle;Ljava/lang/String;)V
    .locals 3
    .param p1, "user"    # Landroid/os/UserHandle;
    .param p2, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1178
    iget-object v0, p0, Landroid/content/pm/LauncherApps$1;->this$0:Landroid/content/pm/LauncherApps;

    monitor-enter v0

    .line 1179
    :try_start_0
    iget-object v1, p0, Landroid/content/pm/LauncherApps$1;->this$0:Landroid/content/pm/LauncherApps;

    invoke-static {v1}, Landroid/content/pm/LauncherApps;->access$100(Landroid/content/pm/LauncherApps;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/LauncherApps$CallbackMessageHandler;

    .line 1180
    .local v2, "callback":Landroid/content/pm/LauncherApps$CallbackMessageHandler;
    invoke-virtual {v2, p2, p1}, Landroid/content/pm/LauncherApps$CallbackMessageHandler;->postOnPackageRemoved(Ljava/lang/String;Landroid/os/UserHandle;)V

    .line 1181
    .end local v2    # "callback":Landroid/content/pm/LauncherApps$CallbackMessageHandler;
    goto :goto_0

    .line 1182
    :cond_0
    monitor-exit v0

    .line 1183
    return-void

    .line 1182
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public onPackagesAvailable(Landroid/os/UserHandle;[Ljava/lang/String;Z)V
    .locals 3
    .param p1, "user"    # Landroid/os/UserHandle;
    .param p2, "packageNames"    # [Ljava/lang/String;
    .param p3, "replacing"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1215
    iget-object v0, p0, Landroid/content/pm/LauncherApps$1;->this$0:Landroid/content/pm/LauncherApps;

    monitor-enter v0

    .line 1216
    :try_start_0
    iget-object v1, p0, Landroid/content/pm/LauncherApps$1;->this$0:Landroid/content/pm/LauncherApps;

    invoke-static {v1}, Landroid/content/pm/LauncherApps;->access$100(Landroid/content/pm/LauncherApps;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/LauncherApps$CallbackMessageHandler;

    .line 1217
    .local v2, "callback":Landroid/content/pm/LauncherApps$CallbackMessageHandler;
    invoke-virtual {v2, p2, p1, p3}, Landroid/content/pm/LauncherApps$CallbackMessageHandler;->postOnPackagesAvailable([Ljava/lang/String;Landroid/os/UserHandle;Z)V

    .line 1218
    .end local v2    # "callback":Landroid/content/pm/LauncherApps$CallbackMessageHandler;
    goto :goto_0

    .line 1219
    :cond_0
    monitor-exit v0

    .line 1220
    return-void

    .line 1219
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public onPackagesSuspended(Landroid/os/UserHandle;[Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 3
    .param p1, "user"    # Landroid/os/UserHandle;
    .param p2, "packageNames"    # [Ljava/lang/String;
    .param p3, "launcherExtras"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1242
    iget-object v0, p0, Landroid/content/pm/LauncherApps$1;->this$0:Landroid/content/pm/LauncherApps;

    monitor-enter v0

    .line 1243
    :try_start_0
    iget-object v1, p0, Landroid/content/pm/LauncherApps$1;->this$0:Landroid/content/pm/LauncherApps;

    invoke-static {v1}, Landroid/content/pm/LauncherApps;->access$100(Landroid/content/pm/LauncherApps;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/LauncherApps$CallbackMessageHandler;

    .line 1244
    .local v2, "callback":Landroid/content/pm/LauncherApps$CallbackMessageHandler;
    invoke-virtual {v2, p2, p3, p1}, Landroid/content/pm/LauncherApps$CallbackMessageHandler;->postOnPackagesSuspended([Ljava/lang/String;Landroid/os/Bundle;Landroid/os/UserHandle;)V

    .line 1245
    .end local v2    # "callback":Landroid/content/pm/LauncherApps$CallbackMessageHandler;
    goto :goto_0

    .line 1246
    :cond_0
    monitor-exit v0

    .line 1247
    return-void

    .line 1246
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public onPackagesUnavailable(Landroid/os/UserHandle;[Ljava/lang/String;Z)V
    .locals 3
    .param p1, "user"    # Landroid/os/UserHandle;
    .param p2, "packageNames"    # [Ljava/lang/String;
    .param p3, "replacing"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1228
    iget-object v0, p0, Landroid/content/pm/LauncherApps$1;->this$0:Landroid/content/pm/LauncherApps;

    monitor-enter v0

    .line 1229
    :try_start_0
    iget-object v1, p0, Landroid/content/pm/LauncherApps$1;->this$0:Landroid/content/pm/LauncherApps;

    invoke-static {v1}, Landroid/content/pm/LauncherApps;->access$100(Landroid/content/pm/LauncherApps;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/LauncherApps$CallbackMessageHandler;

    .line 1230
    .local v2, "callback":Landroid/content/pm/LauncherApps$CallbackMessageHandler;
    invoke-virtual {v2, p2, p1, p3}, Landroid/content/pm/LauncherApps$CallbackMessageHandler;->postOnPackagesUnavailable([Ljava/lang/String;Landroid/os/UserHandle;Z)V

    .line 1231
    .end local v2    # "callback":Landroid/content/pm/LauncherApps$CallbackMessageHandler;
    goto :goto_0

    .line 1232
    :cond_0
    monitor-exit v0

    .line 1233
    return-void

    .line 1232
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public onPackagesUnsuspended(Landroid/os/UserHandle;[Ljava/lang/String;)V
    .locals 3
    .param p1, "user"    # Landroid/os/UserHandle;
    .param p2, "packageNames"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1255
    iget-object v0, p0, Landroid/content/pm/LauncherApps$1;->this$0:Landroid/content/pm/LauncherApps;

    monitor-enter v0

    .line 1256
    :try_start_0
    iget-object v1, p0, Landroid/content/pm/LauncherApps$1;->this$0:Landroid/content/pm/LauncherApps;

    invoke-static {v1}, Landroid/content/pm/LauncherApps;->access$100(Landroid/content/pm/LauncherApps;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/LauncherApps$CallbackMessageHandler;

    .line 1257
    .local v2, "callback":Landroid/content/pm/LauncherApps$CallbackMessageHandler;
    invoke-virtual {v2, p2, p1}, Landroid/content/pm/LauncherApps$CallbackMessageHandler;->postOnPackagesUnsuspended([Ljava/lang/String;Landroid/os/UserHandle;)V

    .line 1258
    .end local v2    # "callback":Landroid/content/pm/LauncherApps$CallbackMessageHandler;
    goto :goto_0

    .line 1259
    :cond_0
    monitor-exit v0

    .line 1260
    return-void

    .line 1259
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public onShortcutChanged(Landroid/os/UserHandle;Ljava/lang/String;Landroid/content/pm/ParceledListSlice;)V
    .locals 4
    .param p1, "user"    # Landroid/os/UserHandle;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "shortcuts"    # Landroid/content/pm/ParceledListSlice;

    .line 1268
    invoke-virtual {p3}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;

    move-result-object v0

    .line 1269
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ShortcutInfo;>;"
    iget-object v1, p0, Landroid/content/pm/LauncherApps$1;->this$0:Landroid/content/pm/LauncherApps;

    monitor-enter v1

    .line 1270
    :try_start_0
    iget-object v2, p0, Landroid/content/pm/LauncherApps$1;->this$0:Landroid/content/pm/LauncherApps;

    invoke-static {v2}, Landroid/content/pm/LauncherApps;->access$100(Landroid/content/pm/LauncherApps;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/LauncherApps$CallbackMessageHandler;

    .line 1271
    .local v3, "callback":Landroid/content/pm/LauncherApps$CallbackMessageHandler;
    invoke-virtual {v3, p2, p1, v0}, Landroid/content/pm/LauncherApps$CallbackMessageHandler;->postOnShortcutChanged(Ljava/lang/String;Landroid/os/UserHandle;Ljava/util/List;)V

    .line 1272
    .end local v3    # "callback":Landroid/content/pm/LauncherApps$CallbackMessageHandler;
    goto :goto_0

    .line 1273
    :cond_0
    monitor-exit v1

    .line 1274
    return-void

    .line 1273
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method
