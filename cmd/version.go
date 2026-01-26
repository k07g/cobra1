package cmd

import (
	"fmt"

	"github.com/spf13/cobra"
)

func init() {
	rootCmd.AddCommand(versionCmd)
}

var versionCmd = &cobra.Command{
	Use:   "version",
	Short: "Print the version number of cobra1",
	Long:  "All software has versions. This is cobra1's",
	Run: func(cmd *cobra.Command, args []string) {
		fmt.Println("Cobra1 v0.1")
	},
}
