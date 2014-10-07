class ChangeStateToWorkflowStateInRepairs < ActiveRecord::Migration
  def change
    rename_column :repairs, :state, :workflow_state
  end
end
