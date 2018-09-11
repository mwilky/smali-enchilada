.class public final synthetic Lcom/android/settings/dashboard/-$$Lambda$DashboardSummary$Ok9Mu3hGa9SiRJnEAHBsEN1wR_0;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/android/settings/dashboard/DashboardSummary;


# direct methods
.method public synthetic constructor <init>(Lcom/android/settings/dashboard/DashboardSummary;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/dashboard/-$$Lambda$DashboardSummary$Ok9Mu3hGa9SiRJnEAHBsEN1wR_0;->f$0:Lcom/android/settings/dashboard/DashboardSummary;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/android/settings/dashboard/-$$Lambda$DashboardSummary$Ok9Mu3hGa9SiRJnEAHBsEN1wR_0;->f$0:Lcom/android/settings/dashboard/DashboardSummary;

    invoke-static {v0}, Lcom/android/settings/dashboard/DashboardSummary;->lambda$updateCategory$5(Lcom/android/settings/dashboard/DashboardSummary;)V

    return-void
.end method
