.class Lcom/android/settings/grid/ExpandableGridView$1;
.super Ljava/lang/Object;
.source "ExpandableGridView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/grid/ExpandableGridView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/grid/ExpandableGridView;


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    iget-object v1, p0, Lcom/android/settings/grid/ExpandableGridView$1;->this$0:Lcom/android/settings/grid/ExpandableGridView;

    #getter for: Lcom/android/settings/grid/ExpandableGridView;->mIsExpanded:Z
    invoke-static {v1}, Lcom/android/settings/grid/ExpandableGridView;->access$000(Lcom/android/settings/grid/ExpandableGridView;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    iget-object v1, p0, Lcom/android/settings/grid/ExpandableGridView$1;->this$0:Lcom/android/settings/grid/ExpandableGridView;

    invoke-virtual {v1, v0}, Lcom/android/settings/grid/ExpandableGridView;->setExpanded(Z)V

    iget-object v1, p0, Lcom/android/settings/grid/ExpandableGridView$1;->this$0:Lcom/android/settings/grid/ExpandableGridView;

    invoke-virtual {v1, v0}, Lcom/android/settings/grid/ExpandableGridView;->saveExpandstate(Z)V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
